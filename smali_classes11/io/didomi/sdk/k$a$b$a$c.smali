###### Class io.didomi.drawable.C1806k.a.b.C0481a.c (io.didomi.sdk.k$a$b$a$c)
.class final Lio/didomi/sdk/k$a$b$a$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/k$a$b$a;-><init>(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;)V
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
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
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
.field final synthetic a:Lio/didomi/sdk/k$a$b$a;


# direct methods
.method constructor <init>(Lio/didomi/sdk/k$a$b$a;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/k$a$b$a$c;->a:Lio/didomi/sdk/k$a$b$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a$c;->a:Lio/didomi/sdk/k$a$b$a;

    invoke-static {v0}, Lio/didomi/sdk/k$a$b$a;->a(Lio/didomi/sdk/k$a$b$a;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-gt v3, v2, :cond_15

    const/16 v4, 0x1000

    if-ge v2, v4, :cond_15

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using CMP Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v3, v1}, Lio/didomi/sdk/Log;->i$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v1, v0

    :cond_31
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/k$a$b$a$c;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
