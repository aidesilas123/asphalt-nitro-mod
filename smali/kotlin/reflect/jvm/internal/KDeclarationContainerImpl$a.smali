###### Class kotlin.reflect.jvm.internal.KDeclarationContainerImpl.a (kotlin.reflect.jvm.internal.KDeclarationContainerImpl$a)
.class public final Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$a;
.super Ljava/lang/Object;
.source "KDeclarationContainerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/text/Regex;
    .registers 2

    invoke-static {}, Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl;->access$getLOCAL_PROPERTY_SIGNATURE$cp()Lkotlin/text/Regex;

    move-result-object v0

    return-object v0
.end method
