###### Class io.didomi.drawable.J2 (io.didomi.sdk.J2)
.class public final Lio/didomi/sdk/J2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/s3;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "Lio/didomi/sdk/J2;",
        "Lio/didomi/sdk/s3;",
        "",
        "enabled",
        "<init>",
        "(Z)V",
        "",
        "script",
        "Lio/didomi/sdk/y;",
        "",
        "a",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    iput-boolean p1, p0, Lio/didomi/sdk/J2;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/y;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p1, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    iget-boolean p2, p0, Lio/didomi/sdk/J2;->a:Z

    if-nez p2, :cond_9

    const-string p2, "DCS is not enabled."

    goto :goto_14

    :cond_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-ge p2, v0, :cond_12

    const-string p2, "DCS won\'t be saved because the functionality requires API 19."

    goto :goto_14

    :cond_12
    const-string p2, "DCS won\'t be saved because Android System WebView is not available."

    :goto_14
    invoke-virtual {p1, p2}, Lio/didomi/sdk/y$a;->a(Ljava/lang/String;)Lio/didomi/sdk/y;

    move-result-object p1

    return-object p1
.end method
