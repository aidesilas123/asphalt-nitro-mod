###### Class com.google.gson.internal.ReflectionAccessFilterHelper.b (com.google.gson.internal.ReflectionAccessFilterHelper$b)
.class abstract Lcom/google/gson/internal/ReflectionAccessFilterHelper$b;
.super Ljava/lang/Object;
.source "ReflectionAccessFilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/ReflectionAccessFilterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/gson/internal/ReflectionAccessFilterHelper$b;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result v0

    if-eqz v0, :cond_1c

    :try_start_6
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    const-string v1, "canAccess"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lcom/google/gson/internal/ReflectionAccessFilterHelper$b$a;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$b$a;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-nez v1, :cond_24

    new-instance v1, Lcom/google/gson/internal/ReflectionAccessFilterHelper$b$b;

    invoke-direct {v1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$b$b;-><init>()V

    :cond_24
    sput-object v1, Lcom/google/gson/internal/ReflectionAccessFilterHelper$b;->a:Lcom/google/gson/internal/ReflectionAccessFilterHelper$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/ReflectionAccessFilterHelper$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$b;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z
.end method
