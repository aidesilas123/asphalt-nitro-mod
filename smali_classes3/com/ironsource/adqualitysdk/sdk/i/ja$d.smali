###### Class com.ironsource.adqualitysdk.sdk.i.ja.d (com.ironsource.adqualitysdk.sdk.i.ja$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ja$d;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ja;->b(Landroid/view/ViewGroup;Landroid/view/View$OnLayoutChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/ja;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$d;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ja$d;->a:Lcom/ironsource/adqualitysdk/sdk/i/ja;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ja;->c(Lcom/ironsource/adqualitysdk/sdk/i/ja;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
