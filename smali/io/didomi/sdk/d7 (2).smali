###### Class io.didomi.drawable.C1744d7 (io.didomi.sdk.d7)
.class public final Lio/didomi/sdk/d7;
.super Lio/didomi/sdk/i7;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/didomi/sdk/d7;",
        "Lio/didomi/sdk/i7;",
        "Lio/didomi/sdk/C1;",
        "binding",
        "<init>",
        "(Lio/didomi/sdk/C1;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/didomi/sdk/C1;)V
    .registers 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/i7;-><init>(Landroidx/viewbinding/ViewBinding;)V

    return-void
.end method
