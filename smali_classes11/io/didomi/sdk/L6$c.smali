###### Class io.didomi.sdk.L6.c (io.didomi.sdk.L6$c)
.class final Lio/didomi/sdk/L6$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/L6;->onBindViewHolder(Lio/didomi/sdk/M6;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "isChecked",
        "",
        "a",
        "(Z)V"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/L6;

.field final synthetic b:Lio/didomi/sdk/J6$d;


# direct methods
.method constructor <init>(Lio/didomi/sdk/L6;Lio/didomi/sdk/J6$d;)V
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/L6$c;->a:Lio/didomi/sdk/L6;

    iput-object p2, p0, Lio/didomi/sdk/L6$c;->b:Lio/didomi/sdk/J6$d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/L6$c;->a:Lio/didomi/sdk/L6;

    invoke-static {v0}, Lio/didomi/sdk/L6;->a(Lio/didomi/sdk/L6;)Lio/didomi/sdk/L6$a;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/L6$c;->b:Lio/didomi/sdk/J6$d;

    invoke-interface {v0, v1, p1}, Lio/didomi/sdk/L6$a;->a(Lio/didomi/sdk/J6;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/L6$c;->a(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
