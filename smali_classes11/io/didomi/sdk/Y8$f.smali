###### Class io.didomi.sdk.Y8.f (io.didomi.sdk.Y8$f)
.class final Lio/didomi/sdk/Y8$f;
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
        "Lio/didomi/sdk/U8$c$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/U8$c$b;",
        "a",
        "()Lio/didomi/sdk/U8$c$b;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/Y8;

.field final synthetic b:Lio/didomi/sdk/U8$c;


# direct methods
.method constructor <init>(Lio/didomi/sdk/Y8;Lio/didomi/sdk/U8$c;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/Y8$f;->a:Lio/didomi/sdk/Y8;

    iput-object p2, p0, Lio/didomi/sdk/Y8$f;->b:Lio/didomi/sdk/U8$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/U8$c$b;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Y8$f;->a:Lio/didomi/sdk/Y8;

    invoke-static {v0}, Lio/didomi/sdk/Y8;->a(Lio/didomi/sdk/Y8;)Lio/didomi/sdk/Y8$a;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/Y8$f;->b:Lio/didomi/sdk/U8$c;

    invoke-virtual {v1}, Lio/didomi/sdk/U8$c;->j()Lio/didomi/sdk/models/InternalVendor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/didomi/sdk/Y8$a;->a(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/Y8$f;->a()Lio/didomi/sdk/U8$c$b;

    move-result-object v0

    return-object v0
.end method
