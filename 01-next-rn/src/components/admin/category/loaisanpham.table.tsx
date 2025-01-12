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
import { CategoryCreate, CategoryUpdate } from "@/components/admin/category";
import { handleDeleteUserAction } from "@/utils/actions/loaisanpham.action";

interface IProps {
  listCategory: any;
  meta: {
    current: number;
    pageSize: number;
    pages: number;
    total: number;
  };
}
const CategoryTable = (props: IProps) => {
  const { listCategory, meta } = props;
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
      title: "Mã loại sản phẩm",
      dataIndex: "MaLoaiSanPham",
      key: "MaLoaiSanPham",
      width: "12%",
    },
    {
      title: "Tên loại sản phẩm",
      dataIndex: "TenLoaiSanPham",
      key: "TenLoaiSanPham",
      width: "15%",
    },
    {
      title: "Giới thiệu",
      dataIndex: "GioiThieu",
      key: "GioiThieu",
      width: "60%",
    },
    {
      title: "Actions",
      width: "15%",
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
              title="Xác nhận xóa user"
              description="Bạn có chắc chắn muốn xóa loại sản phẩm này?"
              onConfirm={async () => {
                await handleDeleteUserAction(record?.MaLoaiSanPham);
                message.success("Delete category succeed");
                const loaisanpham = listCategory.filter(
                  (user: any) => user.MaLoaiSanPham !== record?.MaLoaiSanPham
                );
                const newPage =
                  loaisanpham.length === 0 && meta.current > 1
                    ? meta.current - 1
                    : meta.current;

                replace(
                  `${pathname}?current=${newPage}&pageSize=${meta.pageSize}`
                );
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

  const onChange = (pagination: TablePaginationConfig) => {
    if (pagination && pagination.current && pagination.pageSize) {
      const params = new URLSearchParams(searchParams);
      params.set("current", pagination.current.toString());
      params.set("pageSize", pagination?.pageSize.toString());
      replace(`${pathname}?${params.toString()}`);
    }
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
        <span>Manager Category</span>
        <Button onClick={() => setIsCreateModalOpen(true)}>
          Create Category
        </Button>
      </div>
      <Table
        bordered
        dataSource={listCategory}
        columns={columns}
        rowKey={"MaLoaiSanPham"}
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

      <CategoryCreate
        isCreateModalOpen={isCreateModalOpen}
        setIsCreateModalOpen={setIsCreateModalOpen}
      />

      <CategoryUpdate
        isUpdateModalOpen={isUpdateModalOpen}
        setIsUpdateModalOpen={setIsUpdateModalOpen}
        dataUpdate={dataUpdate}
        setDataUpdate={setDataUpdate}
      />
    </>
  );
};

export default CategoryTable;
