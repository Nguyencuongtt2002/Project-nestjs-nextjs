import { IUser } from "@/types/next-auth";
import { sendRequest } from "@/utils/api";
import { AuthOptions, User } from "next-auth";
import { JWT } from "next-auth/jwt";
import CredentialsProvider from "next-auth/providers/credentials";

export const authOptions: AuthOptions = {
  secret: process.env.NEXTAUTH_SECRET,
  providers: [
    CredentialsProvider({
      // The name to display on the sign in form (e.g. 'Sign in with...')
      name: "credentials",
      // The credentials is used to generate a suitable form on the sign in page.
      // You can specify whatever fields you are expecting to be submitted.
      // e.g. domain, username, password, 2FA token, etc.
      // You can pass any HTML attribute to the <input> tag through the object.
      credentials: {
        username: {},
        password: {},
      },
      authorize: async (credentials) => {
        const res = await sendRequest<IBackendRes<JWT>>({
          method: "POST",
          url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/auth/login`,
          body: {
            Email: credentials?.username,
            MatKhau: credentials?.password,
          },
        });
        if (+res?.statusCode === 201) {
          return {
            id: res?.data?.user.MaNguoiDung,
            TaiKhoan: res?.data?.user.TaiKhoan,
            Email: res?.data?.user.Email,
            access_token: res?.data?.access_token,
          } as any;
        }
        else if (!res || +res.statusCode == 401) {
          throw new Error(JSON.stringify({
            error: res?.message,
            code: 1,
          }));
        }
        else if (!res || +res.statusCode == 400) {
          throw new Error(JSON.stringify({
            error: res?.message ,
            code: 2,
          }));
        } else {
          throw new Error(" Internal server error")
        }
      },
    }),
  ],
  pages: {
    signIn: "/auth/login",
  },
  callbacks: {
    jwt({ token, user, trigger, account }) {
      if (trigger === "signIn" && account?.provider === "credentials") {
        //@ts-ignore
        if (user) {
          token.user = {
            //@ts-ignore
            MaNguoiDung: user.MaNguoiDung,
            //@ts-ignore
            TaiKhoan: user.TaiKhoan,
            //@ts-ignore
            Email: user.Email,
            //@ts-ignore
            VaiTro: user.VaiTro,
            //@ts-ignore
            access_token: user.access_token,
          } as IUser;
        }
      }
      return token;
    },
    session({ session, token }) {
      session.user = token.user as IUser;
      return session;
    },
  },
};
