import { handleUpdateUserAction } from "@/utils/actions/loaisanpham.action";
import { Modal, Input, Form, Row, Col, message, notification } from "antd";
import { useEffect } from "react";

interface IProps {
  isUpdateModalOpen: boolean;
  setIsUpdateModalOpen: (v: boolean) => void;
  dataUpdate: any;
  setDataUpdate: any;
}

const CategoryUpdate = (props: IProps) => {
  const { isUpdateModalOpen, setIsUpdateModalOpen, dataUpdate, setDataUpdate } =
    props;

  const [form] = Form.useForm();

  useEffect(() => {
    if (dataUpdate) {
      //code
      form.setFieldsValue({
        TenLoaiSanPham: dataUpdate.TenLoaiSanPham,
        GioiThieu: dataUpdate.GioiThieu,
      });
    }
  }, [dataUpdate]);

  const handleCloseUpdateModal = () => {
    form.resetFields();
    setIsUpdateModalOpen(false);
    setDataUpdate(null);
  };

  const onFinish = async (values: any) => {
    console.log(values);
    if (dataUpdate) {
      const { TenLoaiSanPham, GioiThieu } = values;
      const res = await handleUpdateUserAction({
        MaLoaiSanPham: dataUpdate.MaLoaiSanPham,
        TenLoaiSanPham,
        GioiThieu,
      });
      if (res?.data) {
        handleCloseUpdateModal();
        message.success("Update category succeed");
      } else {
        notification.error({
          message: "Update category error",
          description: res?.message,
        });
      }
    }
  };

  return (
    <Modal
      title="Update a category"
      open={isUpdateModalOpen}
      onOk={() => form.submit()}
      onCancel={() => handleCloseUpdateModal()}
      maskClosable={false}
    >
      <Form name="basic" onFinish={onFinish} layout="vertical" form={form}>
        <Row gutter={[15, 15]}>
          <Col span={24}>
            <Form.Item
              label="Tên loại sản phẩm"
              name="TenLoaiSanPham"
              rules={[
                { required: true, message: "Tên loại sản phẩm is required" },
              ]}
            >
              <Input type="email" />
            </Form.Item>
          </Col>
          <Col span={24}>
            <Form.Item label="Giới thiệu" name="GioiThieu">
              <Input.TextArea rows={4} />
            </Form.Item>
          </Col>
        </Row>
      </Form>
    </Modal>
  );
};

export default CategoryUpdate;
