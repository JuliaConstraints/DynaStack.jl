# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct CraneMove <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CraneMove(; kwargs...)
        obj = new(meta(CraneMove), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CraneMove

const __meta_CraneMove = Ref{ProtoMeta}()

    function meta(::Type{CraneMove})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CraneMove)
            __meta_CraneMove[] = target = ProtoMeta(CraneMove)
            allflds = Pair{Symbol,Union{Type,String}}[:BlockId => Int32, :SourceId => Int32, :TargetId => Int32, :Sequence => Int32, :EmptyMove => Bool]
            meta(target, CraneMove, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CraneMove[]
    end
end

function Base.getproperty(obj::CraneMove, name::Symbol)
    if name === :BlockId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :SourceId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :TargetId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Sequence
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :EmptyMove
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct CraneSchedule <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CraneSchedule(; kwargs...)
        obj = new(meta(CraneSchedule), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct CraneSchedule

const __meta_CraneSchedule = Ref{ProtoMeta}()

function meta(::Type{CraneSchedule})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CraneSchedule)
            __meta_CraneSchedule[] = target = ProtoMeta(CraneSchedule)
            allflds = Pair{Symbol,Union{Type,String}}[:Moves => Base.Vector{CraneMove}, :SequenceNr => Int32]
            meta(target, CraneSchedule, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CraneSchedule[]
    end
end

function Base.getproperty(obj::CraneSchedule, name::Symbol)
    if name === :Moves
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{CraneMove}
    elseif name === :SequenceNr
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct Performance <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Performance(; kwargs...)
        obj = new(meta(Performance), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Performance

const __meta_Performance = Ref{ProtoMeta}()

function meta(::Type{Performance})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Performance)
            __meta_Performance[] = target = ProtoMeta(Performance)
            allflds = Pair{Symbol,Union{Type,String}}[:CraneManipulations => Int32, :ServiceLevelMean => Float64, :LeadTimeMean => Float64, :DeliveredBlocks => Int32, :TotalBlocksOnTime => Int32, :BlockedArrivalTime => Float64, :TardinessMean => Float64, :BufferUtilizationMean => Float64, :CraneUtilizationMean => Float64, :HandoverUtilizationMean => Float64, :UpstreamUtilizationMean => Float64]
            meta(target, Performance, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Performance[]
        end
end

function Base.getproperty(obj::Performance, name::Symbol)
    if name === :CraneManipulations
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :ServiceLevelMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :LeadTimeMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :DeliveredBlocks
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :TotalBlocksOnTime
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :BlockedArrivalTime
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :TardinessMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :BufferUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :CraneUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :HandoverUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :UpstreamUtilizationMean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct TimeStamp <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TimeStamp(; kwargs...)
        obj = new(meta(TimeStamp), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct TimeStamp

const __meta_TimeStamp = Ref{ProtoMeta}()

function meta(::Type{TimeStamp})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TimeStamp)
            __meta_TimeStamp[] = target = ProtoMeta(TimeStamp)
            allflds = Pair{Symbol,Union{Type,String}}[:MilliSeconds => Int64]
            meta(target, TimeStamp, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TimeStamp[]
    end
end

function Base.getproperty(obj::TimeStamp, name::Symbol)
    if name === :MilliSeconds
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct Block <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Block(; kwargs...)
        obj = new(meta(Block), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Block

const __meta_Block = Ref{ProtoMeta}()

function meta(::Type{Block})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Block)
            __meta_Block[] = target = ProtoMeta(Block)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :Release => TimeStamp, :Due => TimeStamp, :Ready => Bool]
            meta(target, Block, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Block[]
    end
end

function Base.getproperty(obj::Block, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Release
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :Due
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :Ready
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

    mutable struct Stack <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Stack(; kwargs...)
        obj = new(meta(Stack), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Stack

const __meta_Stack = Ref{ProtoMeta}()

function meta(::Type{Stack})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Stack)
            __meta_Stack[] = target = ProtoMeta(Stack)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :MaxHeight => Int32, :BottomToTop => Base.Vector{Block}]
            meta(target, Stack, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Stack[]
    end
end

function Base.getproperty(obj::Stack, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :MaxHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :BottomToTop
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Block}
    else
        getfield(obj, name)
    end
end
        
mutable struct Crane <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Crane(; kwargs...)
        obj = new(meta(Crane), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
        fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Crane

const __meta_Crane = Ref{ProtoMeta}()

function meta(::Type{Crane})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Crane)
            __meta_Crane[] = target = ProtoMeta(Crane)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :LocationId => Int32, :Load => Block, :Schedule => CraneSchedule, :GirderPosition => Float64, :HoistPosition => Float64]
            meta(target, Crane, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Crane[]
    end
end

function Base.getproperty(obj::Crane, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :LocationId
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Load
        return (obj.__protobuf_jl_internal_values[name])::Block
    elseif name === :Schedule
        return (obj.__protobuf_jl_internal_values[name])::CraneSchedule
    elseif name === :GirderPosition
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :HoistPosition
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct Handover <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Handover(; kwargs...)
        obj = new(meta(Handover), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Handover

const __meta_Handover = Ref{ProtoMeta}()
function meta(::Type{Handover})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Handover)
            __meta_Handover[] = target = ProtoMeta(Handover)
            allflds = Pair{Symbol,Union{Type,String}}[:Id => Int32, :Ready => Bool, :Block => Block]
            meta(target, Handover, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Handover[]
    end
end

function Base.getproperty(obj::Handover, name::Symbol)
    if name === :Id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :Ready
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :Block
        return (obj.__protobuf_jl_internal_values[name])::Block
    else
        getfield(obj, name)
    end
end

mutable struct Uncertainties <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Uncertainties(; kwargs...)
        obj = new(meta(Uncertainties), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Uncertainties

const __meta_Uncertainties = Ref{ProtoMeta}()

function meta(::Type{Uncertainties})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Uncertainties)
            __meta_Uncertainties[] = target = ProtoMeta(Uncertainties)
            pack = Symbol[:ArrivalIntervals,:CraneMoveTimes,:HandoverReadyIntervals]
            allflds = Pair{Symbol,Union{Type,String}}[:ArrivalIntervals => Base.Vector{Float64}, :CraneMoveTimes => Base.Vector{Float64}, :HandoverReadyIntervals => Base.Vector{Float64}]
            meta(target, Uncertainties, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Uncertainties[]
    end
end

function Base.getproperty(obj::Uncertainties, name::Symbol)
    if name === :ArrivalIntervals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :CraneMoveTimes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :HandoverReadyIntervals
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
        else
        getfield(obj, name)
    end
end

mutable struct World <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function World(; kwargs...)
        obj = new(meta(World), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct World

const __meta_World = Ref{ProtoMeta}()

function meta(::Type{World})
    ProtoBuf.metalock() do
        if !isassigned(__meta_World)
            __meta_World[] = target = ProtoMeta(World)
            allflds = Pair{Symbol,Union{Type,String}}[:Now => TimeStamp, :Production => Stack, :Buffers => Base.Vector{Stack}, :Handover => Handover, :Crane => Crane, :KPIs => Performance, :ObservationData => Uncertainties, :InvalidMoves => Base.Vector{CraneMove}]
            meta(target, World, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_World[]
    end
end

function Base.getproperty(obj::World, name::Symbol)
    if name === :Now
        return (obj.__protobuf_jl_internal_values[name])::TimeStamp
    elseif name === :Production
        return (obj.__protobuf_jl_internal_values[name])::Stack
    elseif name === :Buffers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Stack}
    elseif name === :Handover
        return (obj.__protobuf_jl_internal_values[name])::Handover
    elseif name === :Crane
        return (obj.__protobuf_jl_internal_values[name])::Crane
    elseif name === :KPIs
        return (obj.__protobuf_jl_internal_values[name])::Performance
    elseif name === :ObservationData
        return (obj.__protobuf_jl_internal_values[name])::Uncertainties
    elseif name === :InvalidMoves
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{CraneMove}
    else
        getfield(obj, name)
    end
end

export Block, Crane, CraneMove, CraneSchedule, Handover, Performance, Stack, TimeStamp, Uncertainties, World
