###### Class io.didomi.sdk.Y8.c (io.didomi.sdk.Y8$c)
.class final Lio/didomi/sdk/Y8$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/Y8;->onBindViewHolder(Lio/didomi/sdk/g9;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Y8;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Y8;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/Y8$c;->a:Lio/didomi/sdk/Y8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Y8$c;->a:Lio/didomi/sdk/Y8;

    invoke-static {v0}, Lio/didomi/sdk/Y8;->a(Lio/didomi/sdk/Y8;)Lio/didomi/sdk/Y8$a;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/Y8$a;->a()V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Y8$c;->a()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
