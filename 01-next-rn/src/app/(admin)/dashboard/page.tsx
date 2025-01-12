import { authOptions } from "@/app/api/auth/auth.options";
import AdminCard from "@/components/admin/admin.card";
import { getServerSession } from "next-auth";

const DashboardPage = async () => {
  // const session = await getServerSession(authOptions);
  // console.log("abc", session?.user.TaiKhoan);
  return (
    <div>
      {/* {JSON.stringify(session)} */}
      <AdminCard />
    </div>
  );
};

export default DashboardPage;
