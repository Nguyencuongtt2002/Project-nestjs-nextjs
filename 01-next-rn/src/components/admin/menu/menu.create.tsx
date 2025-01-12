import { handleCreateMenuAction } from "@/utils/actions/menu.action";
import { Modal, Input, Form, Row, Col, message, notification } from "antd";

interface IProps {
  isCreateModalOpen: boolean;
  setIsCreateModalOpen: (v: boolean) => void;
}

const MenuCreate = (props: IProps) => {
  const { isCreateModalOpen, setIsCreateModalOpen } = props;

  const [form] = Form.useForm();

  const handleCloseCreateModal = () => {
    form.resetFields();
    setIsCreateModalOpen(false);
  };

  const onFinish = async (values: any) => {
    const res = await handleCreateMenuAction(values);
    if (res?.data) {
      handleCloseCreateModal();
      message.success("Create succeed!");
    } else {
      notification.error({
        message: "Create menu error",
        description: res?.message,
      });
    }
  };

  return (
    <Modal
      title="Thêm mới menu"
      open={isCreateModalOpen}
      onOk={() => form.submit()}
      onCancel={() => handleCloseCreateModal()}
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

export default MenuCreate;
