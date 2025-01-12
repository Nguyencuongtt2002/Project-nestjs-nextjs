import { handleUpdateMenuAction } from "@/utils/actions/menu.action";
import { compareDataUpdate } from "@/utils/helper/common";
import { Modal, Input, Form, Row, Col, message, notification } from "antd";
import { useEffect, useState } from "react";

interface IProps {
  isUpdateModalOpen: boolean;
  setIsUpdateModalOpen: (v: boolean) => void;
  dataUpdate: any;
  setDataUpdate: any;
}

const MenuUpdate = (props: IProps) => {
  const { isUpdateModalOpen, setIsUpdateModalOpen, dataUpdate, setDataUpdate } =
    props;

  const [initialData, setInitialData] = useState<any>();

  const [form] = Form.useForm();

  useEffect(() => {
    if (dataUpdate) {
      //code
      form.setFieldsValue({
        TenMenu: dataUpdate.TenMenu,
        Link: dataUpdate.Link,
      });
      setInitialData(dataUpdate);
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
      const dataChanges = compareDataUpdate(initialData, values);
      const newData = { ...dataChanges, MaMenu: dataUpdate.MaMenu };
      const res = await handleUpdateMenuAction(newData);
      if (res?.data) {
        handleCloseUpdateModal();
        message.success("Update menu succeed");
      } else {
        notification.error({
          message: "Update menu error",
          description: res?.message,
        });
      }
    }
  };

  return (
    <Modal
      title="Cập nhật menu"
      open={isUpdateModalOpen}
      onOk={() => form.submit()}
      onCancel={() => handleCloseUpdateModal()}
      maskClosable={false}
    >
      <Form name="basic" onFinish={onFinish} layout="vertical" form={form}>
        <Row gutter={[15, 15]}>
          <Col span={24}>
            <Form.Item
              label="Tên menu"
              name="TenMenu"
              rules={[{ required: true, message: "Tên menu is required" }]}
            >
              <Input />
            </Form.Item>
          </Col>
          <Col span={24}>
            <Form.Item label="Link" name="Link">
              <Input />
            </Form.Item>
          </Col>
        </Row>
      </Form>
    </Modal>
  );
};

export default MenuUpdate;
