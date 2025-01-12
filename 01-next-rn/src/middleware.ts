import { withAuth } from "next-auth/middleware";

export default withAuth({
  // Matches the pages config in `[...nextauth]`
  pages: {
    signIn: "/auth/login", // Trang đăng nhập
  },
});

export const config = {
  // Bảo vệ tất cả các trang trừ các trang login và register
  matcher: [
    // '/((?!auth).*)(.+)|/verify',
    // "/((?!api|_next/static|_next/image|favicon.ico|/|/auth).*)",
    '/((?!api|_next/static|_next/image|favicon.ico|auth|verify|$).*)',
    ],
};
