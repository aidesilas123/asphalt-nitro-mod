###### Class io.didomi.drawable.notice.ctv.b (io.didomi.sdk.notice.ctv.b)
.class public final synthetic Lio/didomi/sdk/notice/ctv/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/b;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/b;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    invoke-static {v0}, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;->N(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V

    return-void
.end method
