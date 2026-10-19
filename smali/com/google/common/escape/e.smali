###### Class com.google.common.escape.e (com.google.common.escape.e)
.class final Lcom/google/common/escape/e;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/escape/e$a;

    invoke-direct {v0}, Lcom/google/common/escape/e$a;-><init>()V

    sput-object v0, Lcom/google/common/escape/e;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()[C
    .registers 1

    sget-object v0, Lcom/google/common/escape/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
