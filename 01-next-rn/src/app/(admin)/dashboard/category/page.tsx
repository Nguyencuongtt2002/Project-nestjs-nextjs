import { authOptions } from "@/app/api/auth/auth.options";
import { CategoryTable } from "@/components/admin";
import { sendRequest } from "@/utils/api";
import { getServerSession } from "next-auth";

interface IProps {
  params: { id: string };
  searchParams: { [key: string]: string | string[] | undefined };
}
const ManageUserPage = async (props: IProps) => {
  const current = props?.searchParams?.current ?? 1;
  const pageSize = props?.searchParams?.pageSize ?? 5;
  const session = await getServerSession(authOptions);

  const res = await sendRequest<IBackendRes<any>>({
    url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/loaisanpham`,
    method: "GET",
    queryParams: {
      current,
      pageSize,
    },
    headers: {
      Authorization: `Bearer ${session?.user?.access_token}`,
    },
    nextOption: {
      next: { tags: ["list-category"] },
    },
  });

  console.log(res?.data?.result);

  return (
    <div>
      <CategoryTable
        listCategory={res?.data?.result ?? []}
        meta={res?.data?.meta}
      />
    </div>
  );
};

export default ManageUserPage;
