package com.kidoz.sdk.api.ui_views;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RecycleEndlessScrollListener {
    private int currentPage;
    private boolean loading;
    private int previousTotalItemCount;
    private int startingPageIndex;
    private int visibleThreshold;

    public RecycleEndlessScrollListener() {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
    }

    public RecycleEndlessScrollListener(int i) {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
        this.visibleThreshold = i;
    }

    public RecycleEndlessScrollListener(int i, int i2) {
        this.visibleThreshold = 5;
        this.currentPage = 0;
        this.previousTotalItemCount = 0;
        this.loading = true;
        this.startingPageIndex = 0;
        this.visibleThreshold = i;
        this.startingPageIndex = i2;
        this.currentPage = i2;
    }

    public int getCurrentPage() {
        return this.currentPage;
    }

    public abstract void onLoadMore(int i, int i2);

    public void onScroll(int i, int i2, int i3) {
        if (i3 < this.previousTotalItemCount) {
            this.currentPage = this.startingPageIndex;
            this.previousTotalItemCount = i3;
            if (i3 == 0) {
                this.loading = true;
            }
        }
        if (this.loading && i3 > this.previousTotalItemCount) {
            this.loading = false;
            this.previousTotalItemCount = i3;
            this.currentPage++;
        }
        if (this.loading || i3 - i2 > i + this.visibleThreshold) {
            return;
        }
        onLoadMore(this.currentPage, i3);
        this.loading = true;
    }

    public void setCurrentPageAndCount(int i, int i2) {
        this.currentPage = i;
        this.startingPageIndex = i;
    }
}
