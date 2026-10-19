###### Class kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.b (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.b)
.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;
.super Ljava/lang/Object;
.source "JvmFlags.kt"


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$b;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;->b:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;->booleanFirst()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$b;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;->a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$b;
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/b;->a:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$b;

    return-object v0
.end method
