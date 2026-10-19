###### Class com.koushikdutta.quack.QuackContext (com.koushikdutta.quack.QuackContext)
.class public final Lcom/koushikdutta/quack/QuackContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/quack/QuackContext$Catcher;,
        Lcom/koushikdutta/quack/QuackContext$Thrower;,
        Lcom/koushikdutta/quack/QuackContext$MethodException;,
        Lcom/koushikdutta/quack/QuackContext$JavaMethodReference4;,
        Lcom/koushikdutta/quack/QuackContext$JavaMethodReference3;,
        Lcom/koushikdutta/quack/QuackContext$JavaMethodReference2;,
        Lcom/koushikdutta/quack/QuackContext$JavaMethodReference1;,
        Lcom/koushikdutta/quack/QuackContext$JavaMethodReference0;,
        Lcom/koushikdutta/quack/QuackContext$JavaMethodReference;
    }
.end annotation


# static fields
.field static interfaceMethods:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field static javaObjectConstructorCandidates:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field static javaObjectFields:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field static javaObjectGetter:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field static javaObjectMethodCandidates:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field static javaObjectMethods:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static javaObjectSetter:Lcom/koushikdutta/quack/Memoize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/Memoize<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final JavaScriptToJavaCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/koushikdutta/quack/QuackCoercion;",
            ">;"
        }
    .end annotation
.end field

.field final JavaScriptToJavaMethodCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lcom/koushikdutta/quack/QuackMethodCoercion;",
            ">;"
        }
    .end annotation
.end field

.field private final JavaToJavascriptCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/koushikdutta/quack/QuackCoercion;",
            ">;"
        }
    .end annotation
.end field

.field final JavaToJavascriptMethodCoercions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "Lcom/koushikdutta/quack/QuackMethodCoercion;",
            ">;"
        }
    .end annotation
.end field

.field private context:J

.field private empty:[Ljava/lang/Object;

.field final finalizationQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private invocationHandlerWrapper:Lcom/koushikdutta/quack/QuackInvocationHandlerWrapper;

.field private jobExecutor:Ljava/util/concurrent/Executor;

.field private final nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/quack/WeakExactHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private totalElapsedScriptExecutionMs:J

.field private useQuickJS:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "quack"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->javaObjectFields:Lcom/koushikdutta/quack/Memoize;

    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->javaObjectMethods:Lcom/koushikdutta/quack/Memoize;

    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->javaObjectGetter:Lcom/koushikdutta/quack/Memoize;

    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->javaObjectSetter:Lcom/koushikdutta/quack/Memoize;

    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->javaObjectMethodCandidates:Lcom/koushikdutta/quack/Memoize;

    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->javaObjectConstructorCandidates:Lcom/koushikdutta/quack/Memoize;

    new-instance v0, Lcom/koushikdutta/quack/Memoize;

    invoke-direct {v0}, Lcom/koushikdutta/quack/Memoize;-><init>()V

    sput-object v0, Lcom/koushikdutta/quack/QuackContext;->interfaceMethods:Lcom/koushikdutta/quack/Memoize;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 10

    const-class v0, Ljava/lang/Float;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/Short;

    const-class v3, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Enum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lcom/koushikdutta/quack/WeakExactHashMap;

    invoke-direct {v5}, Lcom/koushikdutta/quack/WeakExactHashMap;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/quack/QuackContext;->nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Lcom/koushikdutta/quack/QuackContext;->JavaScriptToJavaCoercions:Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/koushikdutta/quack/QuackContext;->JavaToJavascriptCoercions:Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/koushikdutta/quack/QuackContext;->JavaScriptToJavaMethodCoercions:Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/koushikdutta/quack/QuackContext;->JavaToJavascriptMethodCoercions:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, Lcom/koushikdutta/quack/QuackContext;->empty:[Ljava/lang/Object;

    sget-object v6, Lcom/koushikdutta/quack/y;->a:Lcom/koushikdutta/quack/y;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/koushikdutta/quack/k0;->a:Lcom/koushikdutta/quack/k0;

    invoke-virtual {p0, v3, v6}, Lcom/koushikdutta/quack/QuackContext;->putJavaScriptToJavaCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v7, Lcom/koushikdutta/quack/p;->a:Lcom/koushikdutta/quack/p;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v7, Lcom/koushikdutta/quack/o;->a:Lcom/koushikdutta/quack/o;

    invoke-virtual {p0, v6, v7}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v6, Lcom/koushikdutta/quack/b0;->a:Lcom/koushikdutta/quack/b0;

    invoke-virtual {p0, v3, v6}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v3, Lcom/koushikdutta/quack/t;->a:Lcom/koushikdutta/quack/t;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v6, Lcom/koushikdutta/quack/l;->a:Lcom/koushikdutta/quack/l;

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v6, Lcom/koushikdutta/quack/d0;->a:Lcom/koushikdutta/quack/d0;

    invoke-virtual {p0, v3, v6}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v3, Lcom/koushikdutta/quack/w;->a:Lcom/koushikdutta/quack/w;

    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v2, Lcom/koushikdutta/quack/n;->a:Lcom/koushikdutta/quack/n;

    const-class v3, Ljava/lang/Integer;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/koushikdutta/quack/z;->a:Lcom/koushikdutta/quack/z;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/koushikdutta/quack/a0;->a:Lcom/koushikdutta/quack/a0;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/koushikdutta/quack/q;->a:Lcom/koushikdutta/quack/q;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_97

    sget-object v3, Lcom/koushikdutta/quack/m;->a:Lcom/koushikdutta/quack/m;

    invoke-virtual {p0, v2, v3}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v2, Lcom/koushikdutta/quack/e0;->a:Lcom/koushikdutta/quack/e0;

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    :cond_97
    sget-object v1, Lcom/koushikdutta/quack/s;->a:Lcom/koushikdutta/quack/s;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/koushikdutta/quack/f0;->a:Lcom/koushikdutta/quack/f0;

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/koushikdutta/quack/k;->a:Lcom/koushikdutta/quack/k;

    invoke-virtual {p0, v1, v2}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v1, Lcom/koushikdutta/quack/g0;->a:Lcom/koushikdutta/quack/g0;

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    sget-object v0, Lcom/koushikdutta/quack/l0;->a:Lcom/koushikdutta/quack/l0;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/koushikdutta/quack/x;->a:Lcom/koushikdutta/quack/x;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/koushikdutta/quack/h0;->a:Lcom/koushikdutta/quack/h0;

    invoke-virtual {p0, v4, v0}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    new-instance v0, Lcom/koushikdutta/quack/u;

    invoke-direct {v0, p1}, Lcom/koushikdutta/quack/u;-><init>(Z)V

    const-class p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/quack/QuackContext;->putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/quack/QuackContext;->throwInvokedMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs native call(JJ[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static varargs native callConstructor(JJ[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static varargs native callMethod(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static varargs native callProperty(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static coerceJavaScriptToJava(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/koushikdutta/quack/QuackCoercion;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/quack/QuackCoercion;

    if-eqz v0, :cond_d

    invoke-interface {v0, p2, p1}, Lcom/koushikdutta/quack/QuackCoercion;->coerce(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_15

    :cond_2e
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Superclass converter not implemented."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_36
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/quack/QuackCoercion;

    invoke-interface {p0, p2, p1}, Lcom/koushikdutta/quack/QuackCoercion;->coerce(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_61
    const/4 p0, 0x0

    return-object p0
.end method

.method private static coerceJavaToJavaScript(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/koushikdutta/quack/QuackCoercion;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/quack/QuackCoercion;

    if-eqz v0, :cond_d

    invoke-interface {v0, p2, p1}, Lcom/koushikdutta/quack/QuackCoercion;->coerce(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/quack/QuackCoercion;

    invoke-interface {p0, p2, p1}, Lcom/koushikdutta/quack/QuackCoercion;->coerce(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native compileFunction(JLjava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;
.end method

.method private static native cooperateDebugger(J)V
.end method

.method public static create()Lcom/koushikdutta/quack/QuackContext;
    .registers 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/koushikdutta/quack/QuackContext;->create(Z)Lcom/koushikdutta/quack/QuackContext;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z)Lcom/koushikdutta/quack/QuackContext;
    .registers 7

    new-instance v0, Lcom/koushikdutta/quack/QuackContext;

    invoke-direct {v0, p0}, Lcom/koushikdutta/quack/QuackContext;-><init>(Z)V

    invoke-static {v0, p0}, Lcom/koushikdutta/quack/QuackContext;->createContext(Lcom/koushikdutta/quack/QuackContext;Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_14

    iput-wide v1, v0, Lcom/koushikdutta/quack/QuackContext;->context:J

    iput-boolean p0, v0, Lcom/koushikdutta/quack/QuackContext;->useQuickJS:Z

    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "Cannot create Duktape instance"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native createContext(Lcom/koushikdutta/quack/QuackContext;Z)J
.end method

.method private static createMethodInterceptProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Lcom/koushikdutta/quack/v;->a:Lcom/koushikdutta/quack/v;

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs native debuggerAppNotify(J[Ljava/lang/Object;)V
.end method

.method private static native destroyContext(J)V
.end method

.method private static native evaluate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private static native evaluateModule(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private declared-synchronized finalizeJavaScriptObjects()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_49

    :try_start_4
    iget-object v1, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_46

    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_18
    iget-object v3, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    iget-object v3, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_31
    iget-object v2, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_46

    :try_start_37
    iget-wide v2, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_49

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_41

    monitor-exit p0

    return-void

    :cond_41
    :try_start_41
    invoke-static {v2, v3, v1}, Lcom/koushikdutta/quack/QuackContext;->finalizeJavaScriptObjects(J[J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_49

    monitor-exit p0

    return-void

    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native finalizeJavaScriptObjects(J[J)V
.end method

.method private static native getGlobalObject(J)Lcom/koushikdutta/quack/JavaScriptObject;
.end method

.method private static native getHeapSize(J)J
.end method

.method public static getInterfaceMethod(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackContext$JavaMethodReference0;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackContext$JavaMethodReference0<",
            "TT;TA;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaceMethod(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackContext$JavaMethodReference1;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackContext$JavaMethodReference1<",
            "TT;TA;TB;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaceMethod(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackContext$JavaMethodReference2;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackContext$JavaMethodReference2<",
            "TT;TA;TB;TC;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaceMethod(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackContext$JavaMethodReference3;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackContext$JavaMethodReference3<",
            "TT;TA;TB;TC;TD;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaceMethod(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackContext$JavaMethodReference4;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackContext$JavaMethodReference4<",
            "TT;TA;TB;TC;TD;TE;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaceMethod(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackContext$JavaMethodReference;)Ljava/lang/reflect/Method;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackContext$JavaMethodReference<",
            "TT;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static getInterfaceMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 5

    sget-object v0, Lcom/koushikdutta/quack/QuackContext;->interfaceMethods:Lcom/koushikdutta/quack/Memoize;

    new-instance v1, Lcom/koushikdutta/quack/j0;

    invoke-direct {v1, p0}, Lcom/koushikdutta/quack/j0;-><init>(Ljava/lang/reflect/Method;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/quack/Memoize;->memoize(Lcom/koushikdutta/quack/MemoizeFunc;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private static native getKeyInteger(JJI)Ljava/lang/Object;
.end method

.method private static native getKeyObject(JJLjava/lang/Object;)Ljava/lang/Object;
.end method

.method private static native getKeyString(JJLjava/lang/String;)Ljava/lang/Object;
.end method

.method private static getLambdaMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_f
    if-ge v2, v0, :cond_24

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_21

    if-eqz v3, :cond_20

    return-object v1

    :cond_20
    move-object v3, v4

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_24
    return-object v3
.end method

.method private getNativePointer(Lcom/koushikdutta/quack/QuackJavaScriptObject;)J
    .registers 7

    invoke-interface {p1}, Lcom/koushikdutta/quack/QuackJavaScriptObject;->getNativeContext()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_d
    invoke-interface {p1}, Lcom/koushikdutta/quack/QuackJavaScriptObject;->getNativePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized handlePostInvocation()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->hasPostInvocationTasks()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1c

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->jobExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/koushikdutta/quack/QuackContext;->runPostInvocation()V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1c

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v1, Lcom/koushikdutta/quack/a;

    invoke-direct {v1, p0}, Lcom/koushikdutta/quack/a;-><init>(Lcom/koushikdutta/quack/QuackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native hasPendingJobs(J)Z
.end method

.method private declared-synchronized hasPostInvocationTasks()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1c

    :try_start_4
    iget-object v1, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_19

    monitor-exit p0

    return v1

    :cond_10
    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_19

    :try_start_11
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->hasPendingJobs(J)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static invokeMethodReferenceProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "expecting lambda with 1 method: getInterfaceMethod(Foo.class, Foo::bar)"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/koushikdutta/quack/QuackContext;->createMethodInterceptProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_37

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interface method was not called by lambda."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_37
    move-exception p0

    instance-of p1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p1, :cond_6a

    move-object p1, p0

    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz v0, :cond_5e

    check-cast p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {p1}, Ljava/lang/reflect/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/koushikdutta/quack/QuackContext$MethodException;

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Ljava/lang/reflect/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/quack/QuackContext$MethodException;

    iget-object p0, p0, Lcom/koushikdutta/quack/QuackContext$MethodException;->method:Ljava/lang/reflect/Method;

    return-object p0

    :cond_5e
    instance-of p1, p1, Ljava/lang/NullPointerException;

    if-eqz p1, :cond_6a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambdas with primitive arguments must be invoked with default values: getInterfaceMethod(Foo.class, thiz -> thiz.setInt(0))"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static native isDebugging(J)Z
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isNumberClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_33

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_33

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_33

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_33

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_33

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_33

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, 0x1

    :goto_34
    return p0
.end method

.method private synthetic lambda$coerceJavaScriptToJava$1(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p3, p4}, Lcom/koushikdutta/quack/JavaScriptObject;->coerceArgs(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/koushikdutta/quack/JavaScriptObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getInterfaceMethod$2(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 12

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_78

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_75

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-eq v8, v9, :cond_31

    goto :goto_72

    :cond_31
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_72

    :cond_40
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4f

    goto :goto_72

    :cond_4f
    const/4 v8, 0x0

    :goto_50
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_6e

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_6b

    const/4 v8, 0x0

    goto :goto_6f

    :cond_6b
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_6e
    const/4 v8, 0x1

    :goto_6f
    if-eqz v8, :cond_72

    return-object v7

    :cond_72
    :goto_72
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_78
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$new$10(Ljava/lang/Class;Ljava/lang/Short;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$11(Ljava/lang/Class;Ljava/lang/Short;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$12(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$13(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$14(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$15(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$16(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$17(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$18(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$19(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$20(Ljava/lang/Class;Ljava/lang/Float;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$21(Ljava/lang/Class;Ljava/lang/Float;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$22(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$23(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    :goto_a
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$24(Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$25(ZLjava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    return-object p2

    :cond_9
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method

.method static synthetic lambda$new$3(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Enum;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$4(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Byte;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_b

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_1e

    :cond_b
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_18

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    goto :goto_1e

    :cond_18
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    :goto_1e
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$5(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$6(Ljava/lang/Class;Ljava/lang/Byte;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$7(Ljava/lang/Class;Ljava/lang/Byte;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$8(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$new$9(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of p0, p1, Ljava/lang/Number;

    if-eqz p0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p0

    :goto_a
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_1c

    :cond_f
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    goto :goto_a

    :cond_1c
    :goto_1c
    return-object p1
.end method

.method static synthetic lambda$newError$26(Ljava/lang/Throwable;)V
    .registers 1

    throw p0
.end method

.method static synthetic lambda$wrapObjectInvocationHandler$0(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    invoke-virtual {p3, p0, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-interface {p1, p2, p3, p4}, Ljava/lang/reflect/InvocationHandler;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private varargs quackApply(Lcom/koushikdutta/quack/QuackObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/koushikdutta/quack/QuackContext;->empty:[Ljava/lang/Object;

    :cond_4
    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/quack/QuackObject;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private varargs quackConstruct(Lcom/koushikdutta/quack/QuackObject;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/koushikdutta/quack/QuackContext;->empty:[Ljava/lang/Object;

    :cond_4
    invoke-interface {p1, p2}, Lcom/koushikdutta/quack/QuackObject;->construct([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private quackGet(Lcom/koushikdutta/quack/QuackObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p1, p2}, Lcom/koushikdutta/quack/QuackObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private quackHas(Lcom/koushikdutta/quack/QuackObject;Ljava/lang/Object;)Z
    .registers 3

    invoke-interface {p1, p2}, Lcom/koushikdutta/quack/QuackObject;->has(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private quackSet(Lcom/koushikdutta/quack/QuackObject;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/quack/QuackObject;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static native runJobs(J)V
.end method

.method private static native setKeyInteger(JJILjava/lang/Object;)Z
.end method

.method private static native setKeyObject(JJLjava/lang/Object;Ljava/lang/Object;)Z
.end method

.method private static native setKeyString(JJLjava/lang/String;Ljava/lang/Object;)Z
.end method

.method private static native stringify(JJ)Ljava/lang/String;
.end method

.method private static throwInvokedMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance p0, Lcom/koushikdutta/quack/QuackContext$MethodException;

    invoke-direct {p0, p1}, Lcom/koushikdutta/quack/QuackContext$MethodException;-><init>(Ljava/lang/reflect/Method;)V

    throw p0
.end method

.method private static native waitForDebugger(JLjava/lang/String;)V
.end method

.method private static wrapObjectInvocationHandler(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/reflect/InvocationHandler;
    .registers 3

    new-instance v0, Lcom/koushikdutta/quack/r;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/quack/r;-><init>(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;)V

    return-object v0
.end method


# virtual methods
.method public synthetic b(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/quack/QuackContext;->lambda$coerceJavaScriptToJava$1(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs declared-synchronized call(J[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_3a

    :try_start_14
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v4, v5, p1, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->call(JJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2a

    :try_start_1a
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_3a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V

    throw p1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized callConstructor(J[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_3a

    :try_start_14
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v4, v5, p1, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->callConstructor(JJ[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2a

    :try_start_1a
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_3a

    monitor-exit p0

    return-object p1

    :catchall_2a
    move-exception p1

    :try_start_2b
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V

    throw p1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized callMethod(JLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_3d

    :try_start_14
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lcom/koushikdutta/quack/QuackContext;->callMethod(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_2d

    :try_start_1d
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_3d

    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    :try_start_2e
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V

    throw p1
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized callProperty(JLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_3d

    :try_start_14
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    move-wide v6, p1

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v4 .. v9}, Lcom/koushikdutta/quack/QuackContext;->callProperty(JJLjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_2d

    :try_start_1d
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_3d

    monitor-exit p0

    return-object p1

    :catchall_2d
    move-exception p1

    :try_start_2e
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V

    throw p1
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_e

    iput-wide v2, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->destroyContext(J)V

    :cond_e
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;

    invoke-virtual {v0}, Lcom/koushikdutta/quack/WeakExactHashMap;->clear()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs coerceJavaArgsToJavaScript([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaToJavaScript(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_11
    return-object p1
.end method

.method public coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Lcom/koushikdutta/quack/QuackJavaScriptObject;

    if-nez p2, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_6
    instance-of v1, p2, Lcom/koushikdutta/quack/QuackJavaObject;

    if-eqz v1, :cond_16

    move-object v1, p2

    check-cast v1, Lcom/koushikdutta/quack/QuackJavaObject;

    invoke-interface {v1}, Lcom/koushikdutta/quack/QuackJavaObject;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_14

    goto :goto_16

    :cond_14
    move-object p2, v1

    goto :goto_6

    :cond_16
    :goto_16
    if-nez p1, :cond_19

    return-object p2

    :cond_19
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object p2

    :cond_20
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_29

    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_29

    return-object p2

    :cond_29
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_32

    instance-of v2, p2, Ljava/lang/Byte;

    if-eqz v2, :cond_32

    return-object p2

    :cond_32
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_3b

    instance-of v3, p2, Ljava/lang/Short;

    if-eqz v3, :cond_3b

    return-object p2

    :cond_3b
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_44

    instance-of v4, p2, Ljava/lang/Integer;

    if-eqz v4, :cond_44

    return-object p2

    :cond_44
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v4, :cond_4d

    instance-of v5, p2, Ljava/lang/Long;

    if-eqz v5, :cond_4d

    return-object p2

    :cond_4d
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v5, :cond_56

    instance-of v6, p2, Ljava/lang/Float;

    if-eqz v6, :cond_56

    return-object p2

    :cond_56
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v6, :cond_5f

    instance-of v6, p2, Ljava/lang/Double;

    if-eqz v6, :cond_5f

    return-object p2

    :cond_5f
    if-eq p1, v1, :cond_65

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_74

    :cond_65
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_74

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_74
    if-eq p1, v2, :cond_7a

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_89

    :cond_7a
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_89

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_89
    if-eq p1, v3, :cond_8f

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_9e

    :cond_8f
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_9e

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9e
    if-eq p1, v5, :cond_a4

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_b3

    :cond_a4
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_b3

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_b3
    if-eq p1, v4, :cond_b9

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_c8

    :cond_b9
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_c8

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_c8
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_fa

    instance-of v1, p2, Lcom/koushikdutta/quack/JavaScriptObject;

    if-eqz v1, :cond_fa

    check-cast p2, Lcom/koushikdutta/quack/JavaScriptObject;

    const-string v0, "length"

    invoke-virtual {p2, v0}, Lcom/koushikdutta/quack/JavaScriptObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_e9
    if-ge v2, v0, :cond_f9

    invoke-virtual {p2, v2}, Lcom/koushikdutta/quack/JavaScriptObject;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e9

    :cond_f9
    return-object v1

    :cond_fa
    iget-object v1, p0, Lcom/koushikdutta/quack/QuackContext;->JavaScriptToJavaCoercions:Ljava/util/Map;

    invoke-static {v1, p2, p1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_103

    return-object v1

    :cond_103
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_142

    instance-of v1, p2, Lcom/koushikdutta/quack/JavaScriptObject;

    if-eqz v1, :cond_142

    check-cast p2, Lcom/koushikdutta/quack/JavaScriptObject;

    invoke-static {p1}, Lcom/koushikdutta/quack/QuackContext;->getLambdaMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_12f

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v2

    aput-object p1, v3, v4

    new-instance p1, Lcom/koushikdutta/quack/i0;

    invoke-direct {p1, p0, p2}, Lcom/koushikdutta/quack/i0;-><init>(Lcom/koushikdutta/quack/QuackContext;Lcom/koushikdutta/quack/JavaScriptObject;)V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/quack/JavaScriptObject;->getWrappedInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    invoke-static {v1, v3, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12f
    invoke-virtual {p2}, Lcom/koushikdutta/quack/JavaScriptObject;->createInvocationHandler()Ljava/lang/reflect/InvocationHandler;

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v2

    aput-object p1, v3, v4

    invoke-static {v1, v3, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_142
    return-object p2
.end method

.method public coerceJavaToJavaScript(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    move-object v3, p2

    nop

    instance-of p2, v3, Lcom/koushikdutta/quack/QuackJavaObject;

    if-eqz p2, :cond_13

    move-object p2, v3

    check-cast p2, Lcom/koushikdutta/quack/QuackJavaObject;

    invoke-interface {p2}, Lcom/koushikdutta/quack/QuackJavaObject;->getObject()Ljava/lang/Object;

    move-result-object p2

    if-ne v3, p2, :cond_4

    :cond_13
    iget-object p2, p0, Lcom/koushikdutta/quack/QuackContext;->JavaToJavascriptCoercions:Ljava/util/Map;

    invoke-static {p2, v3, p1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaToJavaScript(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1c

    return-object p2

    :cond_1c
    invoke-static {p1}, Lcom/koushikdutta/quack/QuackContext;->getLambdaMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_30

    new-instance v6, Lcom/koushikdutta/quack/QuackContext$1;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/quack/QuackContext$1;-><init>(Lcom/koushikdutta/quack/QuackContext;Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v6

    :cond_30
    return-object v3
.end method

.method public coerceJavaToJavaScript(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaToJavaScript(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized compileFunction(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/quack/QuackContext;->compileFunction(JLjava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cooperateDebugger()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->cooperateDebugger(J)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized debuggerAppNotify([Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-static {v0, v1, p1}, Lcom/koushikdutta/quack/QuackContext;->debuggerAppNotify(J[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3e

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_3e

    :try_start_14
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v4, v5, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->evaluate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_2e

    :try_start_1e
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_3e

    monitor-exit p0

    return-object p1

    :catchall_2e
    move-exception p1

    :try_start_2f
    iget-wide p2, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v4, v0

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V

    throw p1
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluate(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "?"

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/quack/QuackContext;->evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/quack/QuackContext;->evaluate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/quack/QuackContext;->evaluate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluateForJavaScriptObject(Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-class v0, Lcom/koushikdutta/quack/JavaScriptObject;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/quack/QuackContext;->evaluate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/quack/JavaScriptObject;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluateModule(Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "?"

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/quack/QuackContext;->evaluateModule(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized evaluateModule(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_42

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_42

    :try_start_14
    const-class v4, Lcom/koushikdutta/quack/JavaScriptObject;

    iget-wide v5, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v5, v6, p1, p2}, Lcom/koushikdutta/quack/QuackContext;->evaluateModule(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Lcom/koushikdutta/quack/QuackContext;->coerceJavaScriptToJava(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/quack/JavaScriptObject;
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_32

    :try_start_22
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2

    sub-long/2addr v6, v0

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V
    :try_end_30
    .catchall {:try_start_22 .. :try_end_30} :catchall_42

    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    :try_start_33
    iget-wide v4, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v2

    sub-long/2addr v6, v0

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->handlePostInvocation()V

    throw p1
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finalize()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    const-class v0, Lcom/koushikdutta/quack/QuackContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Duktape instance leaked!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_18
    invoke-virtual {p0}, Lcom/koushikdutta/quack/QuackContext;->close()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalizeJavaScriptObject(J)V
    .registers 8

    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/koushikdutta/quack/QuackContext;->finalizationQueue:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw p1
.end method

.method public gc()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->finalizeJavaScriptObjects()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0}, Lcom/koushikdutta/quack/QuackContext;->purgeNativeMappings()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public declared-synchronized getGlobalObject()Lcom/koushikdutta/quack/JavaScriptObject;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->getGlobalObject(J)Lcom/koushikdutta/quack/JavaScriptObject;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeapSize()J
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    monitor-exit p0

    return-wide v2

    :cond_b
    :try_start_b
    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->getHeapSize(J)J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJobExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->jobExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public declared-synchronized getKeyInteger(JI)Ljava/lang/Object;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {v0, v1, p1, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->getKeyInteger(JJI)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeyObject(JLjava/lang/Object;)Ljava/lang/Object;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {v0, v1, p1, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->getKeyObject(JJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeyString(JLjava/lang/String;)Ljava/lang/Object;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {v0, v1, p1, p2, p3}, Lcom/koushikdutta/quack/QuackContext;->getKeyString(JJLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMappedNativeCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;

    invoke-virtual {v0}, Lcom/koushikdutta/quack/WeakExactHashMap;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTotalScriptExecutionTime()J
    .registers 3

    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    return-wide v0
.end method

.method public getWrappedInvocationHandler(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/reflect/InvocationHandler;
    .registers 4

    invoke-static {p1, p2}, Lcom/koushikdutta/quack/QuackContext;->wrapObjectInvocationHandler(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->invocationHandlerWrapper:Lcom/koushikdutta/quack/QuackInvocationHandlerWrapper;

    if-nez v0, :cond_9

    return-object p2

    :cond_9
    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/quack/QuackInvocationHandlerWrapper;->wrapInvocationHandler(Lcom/koushikdutta/quack/JavaScriptObject;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    if-eqz p1, :cond_10

    return-object p1

    :cond_10
    return-object p2
.end method

.method public isDebugging()Z
    .registers 6

    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->isDebugging(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized newError(Ljava/lang/Throwable;)Lcom/koushikdutta/quack/JavaScriptObject;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_c

    monitor-exit p0

    return-object v4

    :cond_c
    :try_start_c
    new-instance v0, Lcom/koushikdutta/quack/c0;

    invoke-direct {v0, p1}, Lcom/koushikdutta/quack/c0;-><init>(Ljava/lang/Throwable;)V

    const-string p1, "(function(t) { try { t(); } catch (e) { return e } })"

    const-class v1, Lcom/koushikdutta/quack/QuackContext$Catcher;

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/quack/QuackContext;->evaluate(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/quack/QuackContext$Catcher;

    invoke-interface {p1, v0}, Lcom/koushikdutta/quack/QuackContext$Catcher;->doCatch(Lcom/koushikdutta/quack/QuackContext$Thrower;)Lcom/koushikdutta/quack/JavaScriptObject;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object p1

    :catchall_21
    monitor-exit p0

    return-object v4

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purgeNativeMappings()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;

    invoke-virtual {v0}, Lcom/koushikdutta/quack/WeakExactHashMap;->purge()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putJavaScriptToJavaCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/koushikdutta/quack/QuackCoercion<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->JavaScriptToJavaCoercions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putJavaScriptToJavaMethodCoercion(Ljava/lang/reflect/Method;Lcom/koushikdutta/quack/QuackMethodCoercion;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->JavaScriptToJavaMethodCoercions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/koushikdutta/quack/QuackContext;->interfaceMethods:Lcom/koushikdutta/quack/Memoize;

    invoke-virtual {p1}, Lcom/koushikdutta/quack/Memoize;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putJavaToJavaScriptCoercion(Ljava/lang/Class;Lcom/koushikdutta/quack/QuackCoercion;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Lcom/koushikdutta/quack/QuackCoercion<",
            "Ljava/lang/Object;",
            "TF;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->JavaToJavascriptCoercions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putJavaToJavaScriptMethodCoercion(Ljava/lang/reflect/Method;Lcom/koushikdutta/quack/QuackMethodCoercion;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->JavaToJavascriptMethodCoercions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/koushikdutta/quack/QuackContext;->interfaceMethods:Lcom/koushikdutta/quack/Memoize;

    invoke-virtual {p1}, Lcom/koushikdutta/quack/Memoize;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized quackMapNative(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/quack/WeakExactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public quackUnmapNative(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/koushikdutta/quack/QuackContext;->nativeMappings:Lcom/koushikdutta/quack/WeakExactHashMap;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/quack/WeakExactHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resetTotalScriptExecutionTime()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->totalElapsedScriptExecutionMs:J

    return-void
.end method

.method public declared-synchronized runPostInvocation()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/koushikdutta/quack/QuackContext;->finalizeJavaScriptObjects()V

    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    invoke-static {v0, v1}, Lcom/koushikdutta/quack/QuackContext;->runJobs(J)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInvocationHandlerWrapper(Lcom/koushikdutta/quack/QuackInvocationHandlerWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/koushikdutta/quack/QuackContext;->invocationHandlerWrapper:Lcom/koushikdutta/quack/QuackInvocationHandlerWrapper;

    return-void
.end method

.method public setJobExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Lcom/koushikdutta/quack/QuackContext;->jobExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public declared-synchronized setKeyInteger(JILjava/lang/Object;)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_c
    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    :try_start_f
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/quack/QuackContext;->setKeyInteger(JJILjava/lang/Object;)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_15

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeyObject(JLjava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_c
    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    :try_start_f
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/quack/QuackContext;->setKeyObject(JJLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_15

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeyString(JLjava/lang/String;Ljava/lang/Object;)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_c
    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    :try_start_f
    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/quack/QuackContext;->setKeyString(JJLjava/lang/String;Ljava/lang/Object;)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_15

    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stringify(J)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_c
    :try_start_c
    invoke-static {v0, v1, p1, p2}, Lcom/koushikdutta/quack/QuackContext;->stringify(JJ)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized throwObject(Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    const-string v0, "(function(t) { throw t; })"

    invoke-virtual {p0, v0}, Lcom/koushikdutta/quack/QuackContext;->evaluateForJavaScriptObject(Ljava/lang/String;)Lcom/koushikdutta/quack/JavaScriptObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/koushikdutta/quack/JavaScriptObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitForDebugger(Ljava/lang/String;)V
    .registers 7

    iget-wide v0, p0, Lcom/koushikdutta/quack/QuackContext;->context:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-void

    :cond_9
    invoke-static {v0, v1, p1}, Lcom/koushikdutta/quack/QuackContext;->waitForDebugger(JLjava/lang/String;)V

    return-void
.end method
