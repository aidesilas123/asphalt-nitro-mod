###### Class com.kidoz.sdk.api.ui_views.one_item_view.AutoScrollViewPager.MyHandler (com.kidoz.sdk.api.ui_views.one_item_view.AutoScrollViewPager$MyHandler)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private final autoScrollViewPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;->autoScrollViewPager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    goto :goto_42

    :cond_8
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager$MyHandler;->autoScrollViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    if-eqz p1, :cond_42

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    move-result-object v0

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->setScrollDurationFactor(D)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->scrollOnce()V

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    move-result-object v0

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;->setScrollDurationFactor(D)V

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$400(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;)Lcom/kidoz/sdk/api/ui_views/one_item_view/CustomDurationScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->access$500(Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;J)V

    :cond_42
    :goto_42
    return-void
.end method
