###### Class io.didomi.drawable.C1953y6.b (io.didomi.sdk.y6$b)
.class public final Lio/didomi/sdk/y6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/b7$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/y6;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "io/didomi/sdk/y6$b",
        "Lio/didomi/sdk/b7$a;",
        "Lio/didomi/sdk/d9;",
        "listType",
        "",
        "a",
        "(Lio/didomi/sdk/d9;)V",
        "",
        "position",
        "(I)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/y6;


# direct methods
.method constructor <init>(Lio/didomi/sdk/y6;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/y6$b;->a:Lio/didomi/sdk/y6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lio/didomi/sdk/y6;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/y6;->a(Lio/didomi/sdk/y6;)Lio/didomi/sdk/a1;

    move-result-object p0

    if-eqz p0, :cond_12

    iget-object p0, p0, Lio/didomi/sdk/a1;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_12
    return-void
.end method

.method public static synthetic b(Lio/didomi/sdk/y6;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/y6$b;->a(Lio/didomi/sdk/y6;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/y6$b;->a:Lio/didomi/sdk/y6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/y6$b;->a:Lio/didomi/sdk/y6;

    new-instance v2, Lio/didomi/sdk/zf;

    invoke-direct {v2, v1, p1}, Lio/didomi/sdk/zf;-><init>(Lio/didomi/sdk/y6;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/d9;)V
    .registers 3

    const-string v0, "listType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/y6$b;->a:Lio/didomi/sdk/y6;

    invoke-static {v0, p1}, Lio/didomi/sdk/y6;->a(Lio/didomi/sdk/y6;Lio/didomi/sdk/d9;)V

    return-void
.end method
