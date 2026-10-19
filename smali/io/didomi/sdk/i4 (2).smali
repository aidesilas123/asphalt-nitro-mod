###### Class io.didomi.drawable.C1791i4 (io.didomi.sdk.i4)
.class public final Lio/didomi/sdk/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/D8;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/g4;

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/g4;Le/a/a;Le/a/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g4;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/i4;->a:Lio/didomi/sdk/g4;

    iput-object p2, p0, Lio/didomi/sdk/i4;->b:Le/a/a;

    iput-object p3, p0, Lio/didomi/sdk/i4;->c:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/g4;Lio/didomi/sdk/Z;Lio/didomi/sdk/H;)Lio/didomi/sdk/D8;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/g4;->a(Lio/didomi/sdk/Z;Lio/didomi/sdk/H;)Lio/didomi/sdk/D8;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/D8;

    return-object p0
.end method

.method public static a(Lio/didomi/sdk/g4;Le/a/a;Le/a/a;)Lio/didomi/sdk/i4;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/g4;",
            "Le/a/a<",
            "Lio/didomi/sdk/Z;",
            ">;",
            "Le/a/a<",
            "Lio/didomi/sdk/H;",
            ">;)",
            "Lio/didomi/sdk/i4;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/i4;

    invoke-direct {v0, p0, p1, p2}, Lio/didomi/sdk/i4;-><init>(Lio/didomi/sdk/g4;Le/a/a;Le/a/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/D8;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/i4;->a:Lio/didomi/sdk/g4;

    iget-object v1, p0, Lio/didomi/sdk/i4;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/Z;

    iget-object v2, p0, Lio/didomi/sdk/i4;->c:Le/a/a;

    invoke-interface {v2}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/H;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/i4;->a(Lio/didomi/sdk/g4;Lio/didomi/sdk/Z;Lio/didomi/sdk/H;)Lio/didomi/sdk/D8;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/i4;->a()Lio/didomi/sdk/D8;

    move-result-object v0

    return-object v0
.end method
