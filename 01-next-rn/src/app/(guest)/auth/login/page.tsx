import { authOptions } from "@/app/api/auth/auth.options";
import Login from "@/components/auth/login";
import { getServerSession } from "next-auth";

const LoginPage = async () => {
  // const session = await getServerSession(authOptions);
  // console.log("abc", session?.user.TaiKhoan);
  return (
    <>
      {/* {JSON.stringify(session)} */}
      <Login />
    </>
  );
};

export default LoginPage;
