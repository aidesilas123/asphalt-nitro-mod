###### Class io.didomi.drawable.C1946y.Companion (io.didomi.sdk.y$a)
.class public final Lio/didomi/sdk/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0008\u0010\u000cJ&\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0008\u00028\u00010\u0006\"\u0004\u0008\u0001\u0010\r2\u0006\u0010\u000e\u001a\u00028\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u000f\u0082\u0002\u0004\n\u0002\u00089\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/y$a;",
        "",
        "<init>",
        "()V",
        "",
        "error",
        "Lio/didomi/sdk/y;",
        "",
        "a",
        "(Ljava/lang/Throwable;)Lio/didomi/sdk/y;",
        "",
        "message",
        "(Ljava/lang/String;)Lio/didomi/sdk/y;",
        "T",
        "data",
        "(Ljava/lang/Object;)Lio/didomi/sdk/y;",
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

    invoke-direct {p0}, Lio/didomi/sdk/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lio/didomi/sdk/y;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lio/didomi/sdk/y<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/y;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lio/didomi/sdk/y;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lio/didomi/sdk/y;
    .registers 3

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Throwable;)Lio/didomi/sdk/y;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;)Lio/didomi/sdk/y;
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/y;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lio/didomi/sdk/y;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
