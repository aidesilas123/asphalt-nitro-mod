###### Class com.google.common.reflect.Types.JavaVersion.b (com.google.common.reflect.Types$JavaVersion$b)
.class final enum Lcom/google/common/reflect/Types$JavaVersion$b;
.super Lcom/google/common/reflect/Types$JavaVersion;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types$JavaVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;ILcom/google/common/reflect/g;)V

    return-void
.end method


# virtual methods
.method g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/reflect/Types;->g(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance v0, Lcom/google/common/reflect/Types$a;

    invoke-direct {v0, p1}, Lcom/google/common/reflect/Types$a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    return-object p1
.end method
