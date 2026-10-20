###### Class io.didomi.drawable.notice.ctv.c (io.didomi.sdk.notice.ctv.c)
.class public final synthetic Lio/didomi/sdk/notice/ctv/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/c;->a:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/c;->a:Landroid/widget/Button;

    invoke-static {v0}, Lio/didomi/sdk/notice/ctv/a;->i(Landroid/widget/Button;)V

    return-void
.end method
