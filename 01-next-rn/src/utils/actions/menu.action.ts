'use server'

import { authOptions } from "@/app/api/auth/auth.options";
import { getServerSession } from "next-auth";
import { revalidateTag } from "next/cache";
import { sendRequest } from "@/utils/api";

export const handleCreateMenuAction = async (data: any) => {
    const session = await getServerSession(authOptions);
    const res = await sendRequest<IBackendRes<any>>({
        url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/menu`,
        method: "POST",
        headers: {
            Authorization: `Bearer ${session?.user?.access_token}`,
        },
        body: { ...data }
    })
    revalidateTag("list-menu")
    return res;
}

export const handleUpdateMenuAction = async (data: any) => {
    const session = await getServerSession(authOptions);
    const res = await sendRequest<IBackendRes<any>>({
        url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/menu`,
        method: "PATCH",
        headers: {
            Authorization: `Bearer ${session?.user?.access_token}`,
        },
        body: { ...data }
    })
    revalidateTag("list-menu")
    return res;
}

export const handleDeleteMenuAction = async (id: any) => {
    const session = await getServerSession(authOptions);
    const res = await sendRequest<IBackendRes<any>>({
        url: `${process.env.NEXT_PUBLIC_BACKEND_URL}/v1/menu/${id}`,
        method: "DELETE",
        headers: {
            Authorization: `Bearer ${session?.user?.access_token}`,
        },
    })
    

    revalidateTag("list-menu")
    return res;
}

