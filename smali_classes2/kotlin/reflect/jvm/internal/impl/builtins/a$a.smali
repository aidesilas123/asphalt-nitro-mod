###### Class kotlin.reflect.jvm.internal.impl.builtins.a.C0513a (kotlin.reflect.jvm.internal.impl.builtins.a$a)
.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a$a;
.super Ljava/lang/Object;
.source "BuiltInsLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/builtins/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final a:Lkotlin/i;

.field static final synthetic b:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->b:Lkotlin/reflect/jvm/internal/impl/builtins/a$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a$a$a;

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->a:Lkotlin/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/builtins/a;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a$a;->a:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a;

    return-object v0
.end method
