export const compareDataUpdate = (
  originalData: { [key: string]: any },
  editedData: { [key: string]: any }
): { [key: string]: any } => {
  const result: { [key: string]: any } = {};

  Object.entries(originalData).forEach(([key, value]) => {
    if (Array.isArray(value) && Array.isArray(editedData[key])) {
      const changedArray = editedData[key].reduce((acc, editedItem, index) => {
        const originalItem = value[index];

        if (
          !originalItem ||
          JSON.stringify(originalItem) !== JSON.stringify(editedItem)
        ) {
          acc.push(editedItem);
        }
        return acc;
      }, [] as any[]);

      if (changedArray.length > 0) {
        result[key] = changedArray;
      }
    } else if (JSON.stringify(value) !== JSON.stringify(editedData[key])) {
      result[key] = editedData[key];
    }
  });

  Object.keys(editedData).forEach((key) => {
    if (!(key in originalData)) {
      result[key] = editedData[key];
    }
  });
  return result;
};
