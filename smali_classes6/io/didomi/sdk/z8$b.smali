###### Class io.didomi.drawable.C1965z8.b (io.didomi.sdk.z8$b)
.class final Lio/didomi/sdk/z8$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/z8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/s5;)V
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
.field final synthetic a:Lio/didomi/sdk/z8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/z8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/z8$b;->a:Lio/didomi/sdk/z8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 4

    sget-object v0, Lio/didomi/sdk/x;->a:Lio/didomi/sdk/x;

    iget-object v1, p0, Lio/didomi/sdk/z8$b;->a:Lio/didomi/sdk/z8;

    invoke-virtual {v1}, Lio/didomi/sdk/z8;->s()Lio/didomi/sdk/k$i;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v1, "#FFFFFF"

    :cond_14
    invoke-virtual {v0, v1}, Lio/didomi/sdk/x;->b(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/z8$b;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
