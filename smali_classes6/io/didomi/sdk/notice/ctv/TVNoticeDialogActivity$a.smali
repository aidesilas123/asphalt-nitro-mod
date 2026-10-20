###### Class io.didomi.sdk.notice.ctv.TVNoticeDialogActivity.a (io.didomi.sdk.notice.ctv.TVNoticeDialogActivity$a)
.class public final Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "io/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a",
        "Landroidx/activity/OnBackPressedCallback;",
        "",
        "handleOnBackPressed",
        "()V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;


# direct methods
.method constructor <init>(Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity$a;->a:Lio/didomi/sdk/notice/ctv/TVNoticeDialogActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method
