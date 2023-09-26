export function nullChecker(data: any) {
  for (const key in data) {
    if (data[key] === "" || data[key] === null) {
      return {
        success: false,
        message: "Data " + key + " tidak boleh kosong",
      };
    }
  }
}
