export interface GameTotalScore {
    id: number;
    userId: number;
    totalScore: number;
    totalWin: number;
    totalLose: number;
    updateTime: Date;
    status: boolean;
}