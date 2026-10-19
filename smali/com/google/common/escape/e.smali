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

###### Class com.google.common.escape.e.a (com.google.common.escape.e$a)
.class Lcom/google/common/escape/e$a;
.super Ljava/lang/ThreadLocal;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "[C>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[C
    .registers 2

    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/escape/e$a;->a()[C

    move-result-object v0

    return-object v0
.end method
