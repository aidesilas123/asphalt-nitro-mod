###### Class kotlin.reflect.jvm.internal.impl.serialization.deserialization.m (kotlin.reflect.jvm.internal.impl.serialization.deserialization.m)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)V
.end method

.method public abstract b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
