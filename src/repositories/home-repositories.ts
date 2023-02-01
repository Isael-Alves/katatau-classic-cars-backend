import { prisma } from "../config/database";

async function findNewNotices() {
    return prisma.car_data.findMany({
        take: 5,
        orderBy: {
            created_at: 'desc',
        }
    });
}

const homeRepositores = {
  findNewNotices,
};

export default homeRepositores;