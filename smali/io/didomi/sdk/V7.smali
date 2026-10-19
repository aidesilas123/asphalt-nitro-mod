###### Class io.didomi.drawable.V7 (io.didomi.sdk.V7)
.class public abstract Lio/didomi/sdk/V7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/V7$a;,
        Lio/didomi/sdk/V7$b;,
        Lio/didomi/sdk/V7$c;,
        Lio/didomi/sdk/V7$d;,
        Lio/didomi/sdk/V7$e;,
        Lio/didomi/sdk/V7$f;,
        Lio/didomi/sdk/V7$g;,
        Lio/didomi/sdk/V7$h;,
        Lio/didomi/sdk/V7$i;,
        Lio/didomi/sdk/V7$j;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\n\u0005\t\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013B\t\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0001\n\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/didomi/sdk/V7;",
        "",
        "<init>",
        "()V",
        "",
        "a",
        "()J",
        "id",
        "",
        "b",
        "()I",
        "typeId",
        "c",
        "d",
        "e",
        "f",
        "g",
        "h",
        "i",
        "j",
        "Lio/didomi/sdk/V7$a;",
        "Lio/didomi/sdk/V7$b;",
        "Lio/didomi/sdk/V7$c;",
        "Lio/didomi/sdk/V7$d;",
        "Lio/didomi/sdk/V7$e;",
        "Lio/didomi/sdk/V7$f;",
        "Lio/didomi/sdk/V7$g;",
        "Lio/didomi/sdk/V7$h;",
        "Lio/didomi/sdk/V7$i;",
        "Lio/didomi/sdk/V7$j;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/V7;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/V7;->b()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public abstract b()I
.end method
