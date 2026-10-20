###### Class io.didomi.sdk.C3.b (io.didomi.sdk.C3$b)
.class final Lio/didomi/sdk/C3$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/C3;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/Z;Lio/didomi/sdk/i3;Lkotlinx/coroutines/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Integer;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Z;

.field final synthetic b:Lio/didomi/sdk/C3;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Z;Lio/didomi/sdk/C3;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/C3$b;->a:Lio/didomi/sdk/Z;

    iput-object p2, p0, Lio/didomi/sdk/C3$b;->b:Lio/didomi/sdk/C3;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/C3$b;->a:Lio/didomi/sdk/Z;

    iget-object v1, p0, Lio/didomi/sdk/C3$b;->b:Lio/didomi/sdk/C3;

    invoke-static {v1}, Lio/didomi/sdk/C3;->a(Lio/didomi/sdk/C3;)Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/Z;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/C3$b;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
