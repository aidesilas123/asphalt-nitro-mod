package com.hyprmx.android.sdk.header;

/* JADX INFO: loaded from: classes2.dex */
public interface d extends com.hyprmx.android.sdk.mvp.a<c> {
    void hideCloseButton();

    void hideCountDown();

    void hideFinishButton();

    void hideNextButton();

    void hidePageCount();

    void hideProgressSpinner();

    void setBackgroundColor(int i);

    void setCountDown(String str);

    void setMinHeight(int i);

    void setPageCount(int i, int i2);

    void setPageCountState(int i, int i2);

    void setTitleText(String str);

    void showCloseButton(int i);

    void showFinishButton(String str, int i, int i2, int i3, int i4);

    void showNextButton(String str, int i, int i2, int i3, int i4);

    void showProgressSpinner();

    void showProgressSpinner(int i);
}
