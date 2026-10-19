###### Class io.didomi.sdk.R8.b (io.didomi.sdk.R8$b)
.class public final Lio/didomi/sdk/R8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/A0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/R8;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "io/didomi/sdk/R8$b",
        "Lio/didomi/sdk/A0$a;",
        "",
        "index",
        "",
        "a",
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
.field final synthetic a:Lio/didomi/sdk/R8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/R8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/R8$b;->a:Lio/didomi/sdk/R8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/R8$b;->a:Lio/didomi/sdk/R8;

    invoke-virtual {v0}, Lio/didomi/sdk/R8;->b()Lio/didomi/sdk/C0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/didomi/sdk/C0;->b(I)V

    sget-object p1, Lio/didomi/sdk/w0;->f:Lio/didomi/sdk/w0$a;

    iget-object v0, p0, Lio/didomi/sdk/R8$b;->a:Lio/didomi/sdk/R8;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/didomi/sdk/w0$a;->a(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method
