import homeRepositores from "../repositories/home-repositories";

async function getFiveNewNotices() {
    const cars = homeRepositores.findNewNotices();
    return cars;
}

const homeServices = {
    getFiveNewNotices
};

export default homeServices;