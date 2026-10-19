###### Class io.didomi.drawable.notice.ctv.d (io.didomi.sdk.notice.ctv.d)
.class public final synthetic Lio/didomi/sdk/notice/ctv/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/notice/ctv/a;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/notice/ctv/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/d;->a:Lio/didomi/sdk/notice/ctv/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/d;->a:Lio/didomi/sdk/notice/ctv/a;

    invoke-static {v0, p1}, Lio/didomi/sdk/notice/ctv/a;->j(Lio/didomi/sdk/notice/ctv/a;Landroid/view/View;)V

    return-void
.end method
