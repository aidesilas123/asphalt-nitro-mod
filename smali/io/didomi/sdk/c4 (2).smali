###### Class io.didomi.drawable.C1731c4 (io.didomi.sdk.c4)
.class public final Lio/didomi/sdk/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lio/didomi/sdk/c4;",
        "",
        "",
        "isAndroidTV",
        "<init>",
        "(Z)V",
        "Lio/didomi/sdk/b4;",
        "a",
        "()Lio/didomi/sdk/b4;",
        "Z",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/didomi/sdk/c4;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/b4;
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/c4;->a:Z

    if-eqz v0, :cond_a

    new-instance v0, Lio/didomi/sdk/t6;

    invoke-direct {v0}, Lio/didomi/sdk/t6;-><init>()V

    goto :goto_f

    :cond_a
    new-instance v0, Lio/didomi/sdk/F3;

    invoke-direct {v0}, Lio/didomi/sdk/F3;-><init>()V

    :goto_f
    return-object v0
.end method
