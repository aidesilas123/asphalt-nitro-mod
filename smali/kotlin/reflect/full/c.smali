###### Class kotlin.reflect.full.c (kotlin.reflect.full.c)
.class final synthetic Lkotlin/reflect/full/c;
.super Lkotlin/jvm/internal/d0;
.source "KClasses.kt"


# static fields
.field public static final a:Lkotlin/reflect/KProperty1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/full/c;

    invoke-direct {v0}, Lkotlin/reflect/full/c;-><init>()V

    sput-object v0, Lkotlin/reflect/full/c;->a:Lkotlin/reflect/KProperty1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/jvm/internal/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lkotlin/reflect/KClass;

    invoke-static {p1}, Lkotlin/reflect/full/KClasses;->getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "superclasses"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/d;
    .registers 3

    const-class v0, Lkotlin/reflect/full/KClasses;

    const-string v1, "kotlin-reflection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/d;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    const-string v0, "getSuperclasses(Lkotlin/reflect/KClass;)Ljava/util/List;"

    return-object v0
.end method
