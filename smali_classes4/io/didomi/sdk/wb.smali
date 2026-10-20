###### Class io.didomi.drawable.wb (io.didomi.sdk.wb)
.class public final synthetic Lio/didomi/sdk/wb;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/l;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/wb;->a:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/wb;->a:Lkotlin/jvm/b/l;

    invoke-static {v0, p1}, Lio/didomi/sdk/M2;->e(Lkotlin/jvm/b/l;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
