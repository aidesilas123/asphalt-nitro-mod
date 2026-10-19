###### Class io.didomi.drawable.P3 (io.didomi.sdk.P3)
.class public Lio/didomi/sdk/P3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003R$\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\u0005\u0010\nR\"\u0010\u0012\u001a\u00020\u000c8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0005\u0010\u0011R*\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00138\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u0014\u001a\u0004\u0008\r\u0010\u0015\"\u0004\u0008\u0005\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/didomi/sdk/P3;",
        "",
        "<init>",
        "()V",
        "",
        "a",
        "Lio/didomi/sdk/user/UserAuth;",
        "Lio/didomi/sdk/user/UserAuth;",
        "c",
        "()Lio/didomi/sdk/user/UserAuth;",
        "(Lio/didomi/sdk/user/UserAuth;)V",
        "userAuth",
        "",
        "b",
        "Z",
        "d",
        "()Z",
        "(Z)V",
        "userIsUnderage",
        "",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "(Ljava/util/List;)V",
        "synchronizedUsers",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private a:Lio/didomi/sdk/user/UserAuth;

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/user/UserAuth;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/P3;->a(Lio/didomi/sdk/user/UserAuth;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/didomi/sdk/P3;->a(Z)V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/P3;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Lio/didomi/sdk/user/UserAuth;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/P3;->a:Lio/didomi/sdk/user/UserAuth;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/didomi/sdk/user/UserAuth;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/P3;->c:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/P3;->b:Z

    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/user/UserAuth;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/P3;->c:Ljava/util/List;

    return-object v0
.end method

.method public c()Lio/didomi/sdk/user/UserAuth;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/P3;->a:Lio/didomi/sdk/user/UserAuth;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/P3;->b:Z

    return v0
.end method
