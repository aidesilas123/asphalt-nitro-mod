###### Class io.didomi.drawable.yf (io.didomi.sdk.yf)
.class public final synthetic Lio/didomi/sdk/yf;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/y5;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/y5;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/yf;->a:Lio/didomi/sdk/y5;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/yf;->a:Lio/didomi/sdk/y5;

    invoke-static {v0, p1}, Lio/didomi/sdk/y5;->d(Lio/didomi/sdk/y5;Landroid/view/View;)V

    return-void
.end method
