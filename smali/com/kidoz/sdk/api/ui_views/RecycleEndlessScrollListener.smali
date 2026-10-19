###### Class com.kidoz.sdk.api.ui_views.RecycleEndlessScrollListener (com.kidoz.sdk.api.ui_views.RecycleEndlessScrollListener)
.class public abstract Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;
.super Ljava/lang/Object;
.source "RecycleEndlessScrollListener.java"


# instance fields
.field private currentPage:I

.field private loading:Z

.field private previousTotalItemCount:I

.field private startingPageIndex:I

.field private visibleThreshold:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->visibleThreshold:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->startingPageIndex:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->visibleThreshold:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->startingPageIndex:I

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->visibleThreshold:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->visibleThreshold:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->startingPageIndex:I

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->visibleThreshold:I

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->startingPageIndex:I

    iput p2, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    return v0
.end method

.method public abstract onLoadMore(II)V
.end method

.method public onScroll(III)V
    .registers 6

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    const/4 v1, 0x1

    if-ge p3, v0, :cond_f

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->startingPageIndex:I

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    iput p3, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    if-nez p3, :cond_f

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    :cond_f
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    if-le p3, v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    iput p3, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->previousTotalItemCount:I

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    :cond_21
    iget-boolean v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    if-nez v0, :cond_33

    sub-int p2, p3, p2

    iget v0, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->visibleThreshold:I

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_33

    iget p1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    invoke-virtual {p0, p1, p3}, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->onLoadMore(II)V

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->loading:Z

    :cond_33
    return-void
.end method

.method public setCurrentPageAndCount(II)V
    .registers 3

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->currentPage:I

    iput p1, p0, Lcom/kidoz/sdk/api/ui_views/RecycleEndlessScrollListener;->startingPageIndex:I

    return-void
.end method
