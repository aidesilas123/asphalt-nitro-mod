###### Class io.didomi.drawable.W2 (io.didomi.sdk.W2)
.class public final Lio/didomi/sdk/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/b<",
        "Lio/didomi/sdk/Z2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/T2;

.field private final b:Le/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/a<",
            "Lio/didomi/sdk/F8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/T2;Le/a/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/T2;",
            "Le/a/a<",
            "Lio/didomi/sdk/F8;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/W2;->a:Lio/didomi/sdk/T2;

    iput-object p2, p0, Lio/didomi/sdk/W2;->b:Le/a/a;

    return-void
.end method

.method public static a(Lio/didomi/sdk/T2;Le/a/a;)Lio/didomi/sdk/W2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/T2;",
            "Le/a/a<",
            "Lio/didomi/sdk/F8;",
            ">;)",
            "Lio/didomi/sdk/W2;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/W2;

    invoke-direct {v0, p0, p1}, Lio/didomi/sdk/W2;-><init>(Lio/didomi/sdk/T2;Le/a/a;)V

    return-object v0
.end method

.method public static a(Lio/didomi/sdk/T2;Lio/didomi/sdk/F8;)Lio/didomi/sdk/Z2;
    .registers 2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/T2;->a(Lio/didomi/sdk/F8;)Lio/didomi/sdk/Z2;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/Z2;

    return-object p0
.end method


# virtual methods
.method public a()Lio/didomi/sdk/Z2;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/W2;->a:Lio/didomi/sdk/T2;

    iget-object v1, p0, Lio/didomi/sdk/W2;->b:Le/a/a;

    invoke-interface {v1}, Le/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/F8;

    invoke-static {v0, v1}, Lio/didomi/sdk/W2;->a(Lio/didomi/sdk/T2;Lio/didomi/sdk/F8;)Lio/didomi/sdk/Z2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/W2;->a()Lio/didomi/sdk/Z2;

    move-result-object v0

    return-object v0
.end method
