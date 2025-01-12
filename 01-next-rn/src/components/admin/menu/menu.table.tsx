"use client";
import { DeleteTwoTone, EditTwoTone } from "@ant-design/icons";
import {
  Button,
  message,
  Popconfirm,
  Table,
  TablePaginationConfig,
} from "antd";
import { usePathname, useRouter, useSearchParams } from "next/navigation";
import { useState } from "react";
import { MenuCreate, MenuUpdate } from "@/components/admin/menu";
import { handleDeleteMenuAction } from "@/utils/actions/menu.action";

interface IProps {
  listMenu: any;
  meta: {
    current: number;
    pageSize: number;
    pages: number;
    total: number;
  };
}
const MenuTable = (props: IProps) => {
  const { listMenu, meta } = props;
  const searchParams = useSearchParams();
  const pathname = usePathname();
  const { replace } = useRouter();
  const [isCreateModalOpen, setIsCreateModalOpen] = useState<boolean>(false);
  const [isUpdateModalOpen, setIsUpdateModalOpen] = useState<boolean>(false);
  const [dataUpdate, setDataUpdate] = useState<any>(null);

  const columns = [
    {
      title: "STT",
      render: (_: any, record: any, index: any) => {
        return <>{index + 1 + (meta.current - 1) * meta.pageSize}</>;
      },
    },
    {
      title: "Mã menu",
      dataIndex: "MaMenu",
      key: "MaMenu",
      sorter: true,
      render: (text: string) => <span>{text}</span>,
    },
    {
      title: "Tên menu",
      dataIndex: "TenMenu",
      key: "TenMenu",
      sorter: true,
      render: (text: string) => <span>{text}</span>,
    },
    {
      title: "Link",
      dataIndex: "Link",
      key: "Link",
      sorter: true,
      render: (text: string) => <span>{text}</span>,
    },
    {
      title: "Actions",
      render: (text: any, record: any, index: any) => {
        {
          console.log(record);
        }
        return (
          <>
            <EditTwoTone
              twoToneColor="#f57800"
              style={{ cursor: "pointer", margin: "0 20px" }}
              onClick={() => {
                setIsUpdateModalOpen(true);
                setDataUpdate(record);
              }}
            />
            <Popconfirm
              placement="leftTop"
              title="Xác nhận xóa menu"
              description="Bạn có chắc chắn muốn xóa menu này?"
              onConfirm={async () => {
                await handleDeleteMenuAction(record?.MaMenu);
                message.success("Delete menu succeed");
                const menu = listMenu.filter(
                  (user: any) => user.MaMenu !== record?.MaMenu
                );

                const params = new URLSearchParams(searchParams);

                const newPage =
                  menu.length === 0 && meta.current > 1
                    ? meta.current - 1
                    : meta.current;

                params.set("current", newPage.toString());
                params.set("pageSize", meta.pageSize.toString());
                if (searchParams.has("sort")) {
                  params.set("sort", searchParams.get("sort")!);
                }

                replace(`${pathname}?${params.toString()}`);
              }}
              okText="Xác nhận"
              cancelText="Hủy"
            >
              <span style={{ cursor: "pointer" }}>
                <DeleteTwoTone twoToneColor="#ff4d4f" />
              </span>
            </Popconfirm>
          </>
        );
      },
    },
  ];

  const onChange = (
    pagination: TablePaginationConfig,
    filters: any,
    sorter: any
  ) => {
    const params = new URLSearchParams(searchParams);
    if (pagination.current)
      params.set("current", pagination.current.toString());
    if (pagination.pageSize)
      params.set("pageSize", pagination.pageSize.toString());
    if (sorter && sorter.field) {
      params.set(
        "sort",
        `${sorter.order === "ascend" ? "" : "-"}${sorter.field}`
      );
    }

    replace(`${pathname}?${params.toString()}`);
  };

  return (
    <>
      <div
        style={{
          display: "flex",
          justifyContent: "space-between",
          alignItems: "center",
          marginBottom: 20,
        }}
      >
        <span>Manager Users</span>
        <Button onClick={() => setIsCreateModalOpen(true)}>Create Menu</Button>
      </div>
      <Table
        bordered
        dataSource={listMenu}
        columns={columns}
        rowKey={"MaMenu"}
        pagination={{
          current: meta?.current,
          pageSize: meta?.pageSize,
          showSizeChanger: true,
          total: meta?.total,
          showTotal: (total, range) => {
            return (
              <div>
                {" "}
                {range[0]}-{range[1]} trên {total} rows
              </div>
            );
          },
        }}
        onChange={onChange}
      />

      <MenuCreate
        isCreateModalOpen={isCreateModalOpen}
        setIsCreateModalOpen={setIsCreateModalOpen}
      />

      <MenuUpdate
        isUpdateModalOpen={isUpdateModalOpen}
        setIsUpdateModalOpen={setIsUpdateModalOpen}
        dataUpdate={dataUpdate}
        setDataUpdate={setDataUpdate}
      />
    </>
  );
};

export default MenuTable;
