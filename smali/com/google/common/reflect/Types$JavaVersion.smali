###### Class com.google.common.reflect.Types.JavaVersion (com.google.common.reflect.Types$JavaVersion)
.class abstract enum Lcom/google/common/reflect/Types$JavaVersion;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "JavaVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/Types$JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum b:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum c:Lcom/google/common/reflect/Types$JavaVersion;

.field public static final enum d:Lcom/google/common/reflect/Types$JavaVersion;

.field static final e:Lcom/google/common/reflect/Types$JavaVersion;

.field private static final synthetic f:[Lcom/google/common/reflect/Types$JavaVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$a;

    const-string v1, "JAVA6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$JavaVersion$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->a:Lcom/google/common/reflect/Types$JavaVersion;

    new-instance v1, Lcom/google/common/reflect/Types$JavaVersion$b;

    const-string v2, "JAVA7"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/common/reflect/Types$JavaVersion$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/reflect/Types$JavaVersion;->b:Lcom/google/common/reflect/Types$JavaVersion;

    new-instance v2, Lcom/google/common/reflect/Types$JavaVersion$c;

    const-string v3, "JAVA8"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/common/reflect/Types$JavaVersion$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/common/reflect/Types$JavaVersion;->c:Lcom/google/common/reflect/Types$JavaVersion;

    new-instance v3, Lcom/google/common/reflect/Types$JavaVersion$d;

    const-string v4, "JAVA9"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/common/reflect/Types$JavaVersion$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/reflect/Types$JavaVersion;->d:Lcom/google/common/reflect/Types$JavaVersion;

    invoke-static {}, Lcom/google/common/reflect/Types$JavaVersion;->e()[Lcom/google/common/reflect/Types$JavaVersion;

    move-result-object v4

    sput-object v4, Lcom/google/common/reflect/Types$JavaVersion;->f:[Lcom/google/common/reflect/Types$JavaVersion;

    const-class v4, Ljava/lang/reflect/AnnotatedElement;

    const-class v5, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_53

    new-instance v0, Lcom/google/common/reflect/Types$JavaVersion$e;

    invoke-direct {v0}, Lcom/google/common/reflect/Types$JavaVersion$e;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/reflect/b;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Map.java.util.Map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    sput-object v2, Lcom/google/common/reflect/Types$JavaVersion;->e:Lcom/google/common/reflect/Types$JavaVersion;

    goto :goto_65

    :cond_50
    sput-object v3, Lcom/google/common/reflect/Types$JavaVersion;->e:Lcom/google/common/reflect/Types$JavaVersion;

    goto :goto_65

    :cond_53
    new-instance v2, Lcom/google/common/reflect/Types$JavaVersion$f;

    invoke-direct {v2}, Lcom/google/common/reflect/Types$JavaVersion$f;-><init>()V

    invoke-virtual {v2}, Lcom/google/common/reflect/b;->c()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_63

    sput-object v1, Lcom/google/common/reflect/Types$JavaVersion;->e:Lcom/google/common/reflect/Types$JavaVersion;

    goto :goto_65

    :cond_63
    sput-object v0, Lcom/google/common/reflect/Types$JavaVersion;->e:Lcom/google/common/reflect/Types$JavaVersion;

    :goto_65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/g;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/Types$JavaVersion;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/reflect/Types$JavaVersion;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/reflect/Types$JavaVersion;

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->a:Lcom/google/common/reflect/Types$JavaVersion;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->b:Lcom/google/common/reflect/Types$JavaVersion;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->c:Lcom/google/common/reflect/Types$JavaVersion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$JavaVersion;->d:Lcom/google/common/reflect/Types$JavaVersion;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$JavaVersion;
    .registers 2

    const-class v0, Lcom/google/common/reflect/Types$JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/Types$JavaVersion;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/Types$JavaVersion;
    .registers 1

    sget-object v0, Lcom/google/common/reflect/Types$JavaVersion;->f:[Lcom/google/common/reflect/Types$JavaVersion;

    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/Types$JavaVersion;

    return-object v0
.end method


# virtual methods
.method f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method abstract g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method h(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/common/reflect/Types;->p(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final i([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/google/common/reflect/Types$JavaVersion;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method abstract j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
