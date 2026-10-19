###### Class com.gameloft.android2d.iap.utils.MyWebView.a.RunnableC0216a (com.gameloft.android2d.iap.utils.MyWebView$a$a)
.class Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/utils/MyWebView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/MyWebView$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/MyWebView$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/MyWebView$a$a;->a:Lcom/gameloft/android2d/iap/utils/MyWebView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/MyWebView;->access$100()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/a;->k(Z)V

    return-void
.end method
