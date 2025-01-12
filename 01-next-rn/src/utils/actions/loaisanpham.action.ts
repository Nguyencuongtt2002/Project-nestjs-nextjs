'use server'

import { authOptions } from "@/app/api/auth/auth.options";
import { getServerSession } from "next-auth";
import { revalidateTag } from "next/cache";
import { sendRequest } from "@/utils/api";

export const handleCreateCategoryAction = async (data: any) => {
    const session = await getServerSession(authOptions);
    const res = await sendRequest<IBackendRes<any>>({
        url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/loaisanpham`,
        method: "POST",
        headers: {
            Authorization: `Bearer ${session?.user?.access_token}`,
        },
        body: { ...data }
    })
    revalidateTag("list-loaisp")
    return res;
}

export const handleUpdateUserAction = async (data: any) => {
    const session = await getServerSession(authOptions);
    const res = await sendRequest<IBackendRes<any>>({
        url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/loaisanpham`,
        method: "PATCH",
        headers: {
            Authorization: `Bearer ${session?.user?.access_token}`,
        },
        body: { ...data }
    })
    revalidateTag("list-loaisp")
    return res;
}

export const handleDeleteUserAction = async (id: any) => {
    const session = await getServerSession(authOptions);
    const res = await sendRequest<IBackendRes<any>>({
        url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/loaisanpham/${id}`,
        method: "DELETE",
        headers: {
            Authorization: `Bearer ${session?.user?.access_token}`,
        },
    })
    

    revalidateTag("list-loaisp")
    return res;
}
