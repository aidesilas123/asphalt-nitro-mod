###### Class com.apm.insight.runtime.g (com.apm.insight.runtime.g)
.class public Lcom/apm/insight/runtime/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/insight/runtime/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/apm/insight/runtime/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/apm/insight/runtime/g$1;

    invoke-direct {v0}, Lcom/apm/insight/runtime/g$1;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/g;->a:Ljava/util/Comparator;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/apm/insight/runtime/g;->b:[B

    return-void
.end method

.method public static a(I)J
    .registers 5

    invoke-static {p0}, Lcom/apm/insight/nativecrash/NativeImpl;->c(I)J

    move-result-wide v0

    invoke-static {}, Lcom/apm/insight/runtime/q$a;->a()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

###### Class com.apm.insight.runtime.g.AnonymousClass1 (com.apm.insight.runtime.g$1)
.class final Lcom/apm/insight/runtime/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/apm/insight/runtime/g$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/apm/insight/runtime/g$a;Lcom/apm/insight/runtime/g$a;)I
    .registers 4

    iget v0, p1, Lcom/apm/insight/runtime/g$a;->b:I

    iget p1, p1, Lcom/apm/insight/runtime/g$a;->c:I

    add-int/2addr v0, p1

    iget p1, p2, Lcom/apm/insight/runtime/g$a;->b:I

    iget p2, p2, Lcom/apm/insight/runtime/g$a;->c:I

    add-int/2addr p1, p2

    if-eq v0, p1, :cond_12

    if-le v0, p1, :cond_10

    const/4 p1, -0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    :goto_11
    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/apm/insight/runtime/g$a;

    check-cast p2, Lcom/apm/insight/runtime/g$a;

    invoke-virtual {p0, p1, p2}, Lcom/apm/insight/runtime/g$1;->a(Lcom/apm/insight/runtime/g$a;Lcom/apm/insight/runtime/g$a;)I

    move-result p1

    return p1
.end method

###### Class com.apm.insight.runtime.g.a (com.apm.insight.runtime.g$a)
.class public Lcom/apm/insight/runtime/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/apm/insight/runtime/g$a;->a:Ljava/lang/String;

    return-void
.end method
