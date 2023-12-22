import axios from 'axios';

const route = window.location.origin;

export const make_request = async (url, metodo, datos) => {
  try {
    const response = await axios({
      method: metodo,
      url: `${route}/${url}`,
      data: datos,
    });

   return response.data;
  } catch (error) {
    console.error('Error en la petición:', error);
    throw error; 
  }
};