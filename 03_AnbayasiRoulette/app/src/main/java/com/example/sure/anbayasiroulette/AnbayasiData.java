package com.example.sure.anbayasiroulette;

/**
 * Created by sure on 16/06/23.
 */
public class AnbayasiData {
    private int number;
    private int addition;
    private String comment;

    // コンストラクタ
    public AnbayasiData(int number, int addition, String comment) {
        this.number = number;
        this.addition = addition;
        this.comment = comment;
    }

    public int getNumber() {
        return number;
    }

    public int getAddition() {
        return addition;
    }

    public String getComment() {
        return comment;
    }

}
