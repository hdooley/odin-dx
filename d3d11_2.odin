package dx

D3D11_TILED_RESOURCE_COORDINATE :: struct {
    X: UINT,
    Y: UINT,
    Z: UINT,
    Subresource: UINT,
}

D3D11_TILE_REGION_SIZE :: struct {
    NumTiles: UINT,
    bUseBox: BOOL,
    Width: UINT,
    Height: UINT16,
    Depth: UINT16,
}

D3D11_SUBRESOURCE_TILING :: struct {
    WidthInTiles: UINT,
    HeightInTiles: UINT16,
    DepthInTiles: UINT16,
    StartTileIndexInOverallResource: UINT,
}

D3D11_TILE_SHAPE :: struct {
    WidthInTexels: UINT,
    HeightInTexels: UINT,
    DepthInTexels: UINT,
}

D3D11_PACKED_MIP_DESC :: struct {
    NumStandardMips: UINT8,
    NumPackedMips: UINT8,
    NumTilesForPackedMips: UINT,
    StartTileIndexInOverallResource: UINT,
}

ID3D11DeviceContext2 :: struct {
    using vtbl: ^ID3D11DeviceContext2Vtbl,
}

ID3D11DeviceContext2Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11DeviceContext2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11DeviceContext2) -> ULONG,
    Release : proc(This: ^ID3D11DeviceContext2) -> ULONG,
    GetDevice : proc(This: ^ID3D11DeviceContext2, ppDevice: ^^ID3D11Device),
    GetPrivateData : proc(This: ^ID3D11DeviceContext2, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11DeviceContext2, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11DeviceContext2, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    VSSetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSSetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSSetShader : proc(This: ^ID3D11DeviceContext2, pPixelShader: ^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    PSSetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSSetShader : proc(This: ^ID3D11DeviceContext2, pVertexShader: ^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DrawIndexed : proc(This: ^ID3D11DeviceContext2, IndexCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT),
    Draw : proc(This: ^ID3D11DeviceContext2, VertexCount: UINT, StartVertexLocation: UINT),
    Map : proc(This: ^ID3D11DeviceContext2, pResource: ^ID3D11Resource, Subresource: UINT, MapType: D3D11_MAP, MapFlags: UINT, pMappedResource: ^D3D11_MAPPED_SUBRESOURCE) -> HRESULT,
    Unmap : proc(This: ^ID3D11DeviceContext2, pResource: ^ID3D11Resource, Subresource: UINT),
    PSSetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IASetInputLayout : proc(This: ^ID3D11DeviceContext2, pInputLayout: ^ID3D11InputLayout),
    IASetVertexBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IASetIndexBuffer : proc(This: ^ID3D11DeviceContext2, pIndexBuffer: ^ID3D11Buffer, Format: DXGI_FORMAT, Offset: UINT),
    DrawIndexedInstanced : proc(This: ^ID3D11DeviceContext2, IndexCountPerInstance: UINT, InstanceCount: UINT, StartIndexLocation: UINT, BaseVertexLocation: INT, StartInstanceLocation: UINT),
    DrawInstanced : proc(This: ^ID3D11DeviceContext2, VertexCountPerInstance: UINT, InstanceCount: UINT, StartVertexLocation: UINT, StartInstanceLocation: UINT),
    GSSetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSSetShader : proc(This: ^ID3D11DeviceContext2, pShader: ^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    IASetPrimitiveTopology : proc(This: ^ID3D11DeviceContext2, Topology: D3D11_PRIMITIVE_TOPOLOGY),
    VSSetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSSetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    Begin : proc(This: ^ID3D11DeviceContext2, pAsync: ^ID3D11Asynchronous),
    End : proc(This: ^ID3D11DeviceContext2, pAsync: ^ID3D11Asynchronous),
    GetData : proc(This: ^ID3D11DeviceContext2, pAsync: ^ID3D11Asynchronous, pData: rawptr, DataSize: UINT, GetDataFlags: UINT) -> HRESULT,
    SetPredication : proc(This: ^ID3D11DeviceContext2, pPredicate: ^ID3D11Predicate, PredicateValue: BOOL),
    GSSetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSSetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMSetRenderTargets : proc(This: ^ID3D11DeviceContext2, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView),
    OMSetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext2, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, pDepthStencilView: ^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    OMSetBlendState : proc(This: ^ID3D11DeviceContext2, pBlendState: ^ID3D11BlendState, BlendFactor: [4]FLOAT, SampleMask: UINT),
    OMSetDepthStencilState : proc(This: ^ID3D11DeviceContext2, pDepthStencilState: ^ID3D11DepthStencilState, StencilRef: UINT),
    SOSetTargets : proc(This: ^ID3D11DeviceContext2, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer, pOffsets: ^UINT),
    DrawAuto : proc(This: ^ID3D11DeviceContext2),
    DrawIndexedInstancedIndirect : proc(This: ^ID3D11DeviceContext2, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    DrawInstancedIndirect : proc(This: ^ID3D11DeviceContext2, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    Dispatch : proc(This: ^ID3D11DeviceContext2, ThreadGroupCountX: UINT, ThreadGroupCountY: UINT, ThreadGroupCountZ: UINT),
    DispatchIndirect : proc(This: ^ID3D11DeviceContext2, pBufferForArgs: ^ID3D11Buffer, AlignedByteOffsetForArgs: UINT),
    RSSetState : proc(This: ^ID3D11DeviceContext2, pRasterizerState: ^ID3D11RasterizerState),
    RSSetViewports : proc(This: ^ID3D11DeviceContext2, NumViewports: UINT, pViewports: ^D3D11_VIEWPORT),
    RSSetScissorRects : proc(This: ^ID3D11DeviceContext2, NumRects: UINT, pRects: ^D3D11_RECT),
    CopySubresourceRegion : proc(This: ^ID3D11DeviceContext2, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX),
    CopyResource : proc(This: ^ID3D11DeviceContext2, pDstResource: ^ID3D11Resource, pSrcResource: ^ID3D11Resource),
    UpdateSubresource : proc(This: ^ID3D11DeviceContext2, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT),
    CopyStructureCount : proc(This: ^ID3D11DeviceContext2, pDstBuffer: ^ID3D11Buffer, DstAlignedByteOffset: UINT, pSrcView: ^ID3D11UnorderedAccessView),
    ClearRenderTargetView : proc(This: ^ID3D11DeviceContext2, pRenderTargetView: ^ID3D11RenderTargetView, ColorRGBA: [4]FLOAT),
    ClearUnorderedAccessViewUint : proc(This: ^ID3D11DeviceContext2, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]UINT),
    ClearUnorderedAccessViewFloat : proc(This: ^ID3D11DeviceContext2, pUnorderedAccessView: ^ID3D11UnorderedAccessView, Values: [4]FLOAT),
    ClearDepthStencilView : proc(This: ^ID3D11DeviceContext2, pDepthStencilView: ^ID3D11DepthStencilView, ClearFlags: UINT, Depth: FLOAT, Stencil: UINT8),
    GenerateMips : proc(This: ^ID3D11DeviceContext2, pShaderResourceView: ^ID3D11ShaderResourceView),
    SetResourceMinLOD : proc(This: ^ID3D11DeviceContext2, pResource: ^ID3D11Resource, MinLOD: FLOAT),
    GetResourceMinLOD : proc(This: ^ID3D11DeviceContext2, pResource: ^ID3D11Resource) -> FLOAT,
    ResolveSubresource : proc(This: ^ID3D11DeviceContext2, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, Format: DXGI_FORMAT),
    ExecuteCommandList : proc(This: ^ID3D11DeviceContext2, pCommandList: ^ID3D11CommandList, RestoreContextState: BOOL),
    HSSetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSSetShader : proc(This: ^ID3D11DeviceContext2, pHullShader: ^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    HSSetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSSetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSSetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSSetShader : proc(This: ^ID3D11DeviceContext2, pDomainShader: ^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    DSSetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSSetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSSetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSSetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView, pUAVInitialCounts: ^UINT),
    CSSetShader : proc(This: ^ID3D11DeviceContext2, pComputeShader: ^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, NumClassInstances: UINT),
    CSSetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSSetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    VSGetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    PSGetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    PSGetShader : proc(This: ^ID3D11DeviceContext2, ppPixelShader: ^^ID3D11PixelShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    VSGetShader : proc(This: ^ID3D11DeviceContext2, ppVertexShader: ^^ID3D11VertexShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    PSGetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    IAGetInputLayout : proc(This: ^ID3D11DeviceContext2, ppInputLayout: ^^ID3D11InputLayout),
    IAGetVertexBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppVertexBuffers: ^^ID3D11Buffer, pStrides: ^UINT, pOffsets: ^UINT),
    IAGetIndexBuffer : proc(This: ^ID3D11DeviceContext2, pIndexBuffer: ^^ID3D11Buffer, Format: ^DXGI_FORMAT, Offset: ^UINT),
    GSGetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    GSGetShader : proc(This: ^ID3D11DeviceContext2, ppGeometryShader: ^^ID3D11GeometryShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    IAGetPrimitiveTopology : proc(This: ^ID3D11DeviceContext2, pTopology: ^D3D11_PRIMITIVE_TOPOLOGY),
    VSGetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    VSGetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    GetPredication : proc(This: ^ID3D11DeviceContext2, ppPredicate: ^^ID3D11Predicate, pPredicateValue: ^BOOL),
    GSGetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    GSGetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    OMGetRenderTargets : proc(This: ^ID3D11DeviceContext2, NumViews: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView),
    OMGetRenderTargetsAndUnorderedAccessViews : proc(This: ^ID3D11DeviceContext2, NumRTVs: UINT, ppRenderTargetViews: ^^ID3D11RenderTargetView, ppDepthStencilView: ^^ID3D11DepthStencilView, UAVStartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    OMGetBlendState : proc(This: ^ID3D11DeviceContext2, ppBlendState: ^^ID3D11BlendState, BlendFactor: [4]FLOAT, pSampleMask: ^UINT),
    OMGetDepthStencilState : proc(This: ^ID3D11DeviceContext2, ppDepthStencilState: ^^ID3D11DepthStencilState, pStencilRef: ^UINT),
    SOGetTargets : proc(This: ^ID3D11DeviceContext2, NumBuffers: UINT, ppSOTargets: ^^ID3D11Buffer),
    RSGetState : proc(This: ^ID3D11DeviceContext2, ppRasterizerState: ^^ID3D11RasterizerState),
    RSGetViewports : proc(This: ^ID3D11DeviceContext2, pNumViewports: ^UINT, pViewports: ^D3D11_VIEWPORT),
    RSGetScissorRects : proc(This: ^ID3D11DeviceContext2, pNumRects: ^UINT, pRects: ^D3D11_RECT),
    HSGetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    HSGetShader : proc(This: ^ID3D11DeviceContext2, ppHullShader: ^^ID3D11HullShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    HSGetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    HSGetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    DSGetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    DSGetShader : proc(This: ^ID3D11DeviceContext2, ppDomainShader: ^^ID3D11DomainShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    DSGetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    DSGetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    CSGetShaderResources : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumViews: UINT, ppShaderResourceViews: ^^ID3D11ShaderResourceView),
    CSGetUnorderedAccessViews : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumUAVs: UINT, ppUnorderedAccessViews: ^^ID3D11UnorderedAccessView),
    CSGetShader : proc(This: ^ID3D11DeviceContext2, ppComputeShader: ^^ID3D11ComputeShader, ppClassInstances: ^^ID3D11ClassInstance, pNumClassInstances: ^UINT),
    CSGetSamplers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumSamplers: UINT, ppSamplers: ^^ID3D11SamplerState),
    CSGetConstantBuffers : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer),
    ClearState : proc(This: ^ID3D11DeviceContext2),
    Flush : proc(This: ^ID3D11DeviceContext2),
    GetType : proc(This: ^ID3D11DeviceContext2) -> D3D11_DEVICE_CONTEXT_TYPE,
    GetContextFlags : proc(This: ^ID3D11DeviceContext2) -> UINT,
    FinishCommandList : proc(This: ^ID3D11DeviceContext2, RestoreDeferredContextState: BOOL, ppCommandList: ^^ID3D11CommandList) -> HRESULT,
    CopySubresourceRegion1 : proc(This: ^ID3D11DeviceContext2, pDstResource: ^ID3D11Resource, DstSubresource: UINT, DstX: UINT, DstY: UINT, DstZ: UINT, pSrcResource: ^ID3D11Resource, SrcSubresource: UINT, pSrcBox: ^D3D11_BOX, CopyFlags: UINT),
    UpdateSubresource1 : proc(This: ^ID3D11DeviceContext2, pDstResource: ^ID3D11Resource, DstSubresource: UINT, pDstBox: ^D3D11_BOX, pSrcData: rawptr, SrcRowPitch: UINT, SrcDepthPitch: UINT, CopyFlags: UINT),
    DiscardResource : proc(This: ^ID3D11DeviceContext2, pResource: ^ID3D11Resource),
    DiscardView : proc(This: ^ID3D11DeviceContext2, pResourceView: ^ID3D11View),
    VSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSSetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    VSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    HSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    DSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    GSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    PSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    CSGetConstantBuffers1 : proc(This: ^ID3D11DeviceContext2, StartSlot: UINT, NumBuffers: UINT, ppConstantBuffers: ^^ID3D11Buffer, pFirstConstant: ^UINT, pNumConstants: ^UINT),
    SwapDeviceContextState : proc(This: ^ID3D11DeviceContext2, pState: ^ID3DDeviceContextState, ppPreviousState: ^^ID3DDeviceContextState),
    ClearView : proc(This: ^ID3D11DeviceContext2, pView: ^ID3D11View, Color: [4]FLOAT, pRect: ^D3D11_RECT, NumRects: UINT),
    DiscardView1 : proc(This: ^ID3D11DeviceContext2, pResourceView: ^ID3D11View, pRects: ^D3D11_RECT, NumRects: UINT),
    UpdateTileMappings : proc(This: ^ID3D11DeviceContext2, pTiledResource: ^ID3D11Resource, NumTiledResourceRegions: UINT, pTiledResourceRegionStartCoordinates: ^D3D11_TILED_RESOURCE_COORDINATE, pTiledResourceRegionSizes: ^D3D11_TILE_REGION_SIZE, pTilePool: ^ID3D11Buffer, NumRanges: UINT, pRangeFlags: ^UINT, pTilePoolStartOffsets: ^UINT, pRangeTileCounts: ^UINT, Flags: UINT) -> HRESULT,
    CopyTileMappings : proc(This: ^ID3D11DeviceContext2, pDestTiledResource: ^ID3D11Resource, pDestRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pSourceTiledResource: ^ID3D11Resource, pSourceRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pTileRegionSize: ^D3D11_TILE_REGION_SIZE, Flags: UINT) -> HRESULT,
    CopyTiles : proc(This: ^ID3D11DeviceContext2, pTiledResource: ^ID3D11Resource, pTileRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pTileRegionSize: ^D3D11_TILE_REGION_SIZE, pBuffer: ^ID3D11Buffer, BufferStartOffsetInBytes: UINT64, Flags: UINT),
    UpdateTiles : proc(This: ^ID3D11DeviceContext2, pDestTiledResource: ^ID3D11Resource, pDestTileRegionStartCoordinate: ^D3D11_TILED_RESOURCE_COORDINATE, pDestTileRegionSize: ^D3D11_TILE_REGION_SIZE, pSourceTileData: rawptr, Flags: UINT),
    ResizeTilePool : proc(This: ^ID3D11DeviceContext2, pTilePool: ^ID3D11Buffer, NewSizeInBytes: UINT64) -> HRESULT,
    TiledResourceBarrier : proc(This: ^ID3D11DeviceContext2, pTiledResourceOrViewAccessBeforeBarrier: ^ID3D11DeviceChild, pTiledResourceOrViewAccessAfterBarrier: ^ID3D11DeviceChild),
    IsAnnotationEnabled : proc(This: ^ID3D11DeviceContext2) -> BOOL,
    SetMarkerInt : proc(This: ^ID3D11DeviceContext2, pLabel: LPCWSTR, Data: INT),
    BeginEventInt : proc(This: ^ID3D11DeviceContext2, pLabel: LPCWSTR, Data: INT),
    EndEvent : proc(This: ^ID3D11DeviceContext2),
}

ID3D11Device2 :: struct {
    using vtbl: ^ID3D11Device2Vtbl,
}

ID3D11Device2Vtbl :: struct {
    QueryInterface : proc(This: ^ID3D11Device2, riid: REFIID, ppvObject: ^rawptr) -> HRESULT,
    AddRef : proc(This: ^ID3D11Device2) -> ULONG,
    Release : proc(This: ^ID3D11Device2) -> ULONG,
    CreateBuffer : proc(This: ^ID3D11Device2, pDesc: ^D3D11_BUFFER_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppBuffer: ^^ID3D11Buffer) -> HRESULT,
    CreateTexture1D : proc(This: ^ID3D11Device2, pDesc: ^D3D11_TEXTURE1D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture1D: ^^ID3D11Texture1D) -> HRESULT,
    CreateTexture2D : proc(This: ^ID3D11Device2, pDesc: ^D3D11_TEXTURE2D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture2D: ^^ID3D11Texture2D) -> HRESULT,
    CreateTexture3D : proc(This: ^ID3D11Device2, pDesc: ^D3D11_TEXTURE3D_DESC, pInitialData: ^D3D11_SUBRESOURCE_DATA, ppTexture3D: ^^ID3D11Texture3D) -> HRESULT,
    CreateShaderResourceView : proc(This: ^ID3D11Device2, pResource: ^ID3D11Resource, pDesc: ^D3D11_SHADER_RESOURCE_VIEW_DESC, ppSRView: ^^ID3D11ShaderResourceView) -> HRESULT,
    CreateUnorderedAccessView : proc(This: ^ID3D11Device2, pResource: ^ID3D11Resource, pDesc: ^D3D11_UNORDERED_ACCESS_VIEW_DESC, ppUAView: ^^ID3D11UnorderedAccessView) -> HRESULT,
    CreateRenderTargetView : proc(This: ^ID3D11Device2, pResource: ^ID3D11Resource, pDesc: ^D3D11_RENDER_TARGET_VIEW_DESC, ppRTView: ^^ID3D11RenderTargetView) -> HRESULT,
    CreateDepthStencilView : proc(This: ^ID3D11Device2, pResource: ^ID3D11Resource, pDesc: ^D3D11_DEPTH_STENCIL_VIEW_DESC, ppDepthStencilView: ^^ID3D11DepthStencilView) -> HRESULT,
    CreateInputLayout : proc(This: ^ID3D11Device2, pInputElementDescs: ^D3D11_INPUT_ELEMENT_DESC, NumElements: UINT, pShaderBytecodeWithInputSignature: rawptr, BytecodeLength: SIZE_T, ppInputLayout: ^^ID3D11InputLayout) -> HRESULT,
    CreateVertexShader : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppVertexShader: ^^ID3D11VertexShader) -> HRESULT,
    CreateGeometryShader : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreateGeometryShaderWithStreamOutput : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pSODeclaration: ^D3D11_SO_DECLARATION_ENTRY, NumEntries: UINT, pBufferStrides: ^UINT, NumStrides: UINT, RasterizedStream: UINT, pClassLinkage: ^ID3D11ClassLinkage, ppGeometryShader: ^^ID3D11GeometryShader) -> HRESULT,
    CreatePixelShader : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppPixelShader: ^^ID3D11PixelShader) -> HRESULT,
    CreateHullShader : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppHullShader: ^^ID3D11HullShader) -> HRESULT,
    CreateDomainShader : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppDomainShader: ^^ID3D11DomainShader) -> HRESULT,
    CreateComputeShader : proc(This: ^ID3D11Device2, pShaderBytecode: rawptr, BytecodeLength: SIZE_T, pClassLinkage: ^ID3D11ClassLinkage, ppComputeShader: ^^ID3D11ComputeShader) -> HRESULT,
    CreateClassLinkage : proc(This: ^ID3D11Device2, ppLinkage: ^^ID3D11ClassLinkage) -> HRESULT,
    CreateBlendState : proc(This: ^ID3D11Device2, pBlendStateDesc: ^D3D11_BLEND_DESC, ppBlendState: ^^ID3D11BlendState) -> HRESULT,
    CreateDepthStencilState : proc(This: ^ID3D11Device2, pDepthStencilDesc: ^D3D11_DEPTH_STENCIL_DESC, ppDepthStencilState: ^^ID3D11DepthStencilState) -> HRESULT,
    CreateRasterizerState : proc(This: ^ID3D11Device2, pRasterizerDesc: ^D3D11_RASTERIZER_DESC, ppRasterizerState: ^^ID3D11RasterizerState) -> HRESULT,
    CreateSamplerState : proc(This: ^ID3D11Device2, pSamplerDesc: ^D3D11_SAMPLER_DESC, ppSamplerState: ^^ID3D11SamplerState) -> HRESULT,
    CreateQuery : proc(This: ^ID3D11Device2, pQueryDesc: ^D3D11_QUERY_DESC, ppQuery: ^^ID3D11Query) -> HRESULT,
    CreatePredicate : proc(This: ^ID3D11Device2, pPredicateDesc: ^D3D11_QUERY_DESC, ppPredicate: ^^ID3D11Predicate) -> HRESULT,
    CreateCounter : proc(This: ^ID3D11Device2, pCounterDesc: ^D3D11_COUNTER_DESC, ppCounter: ^^ID3D11Counter) -> HRESULT,
    CreateDeferredContext : proc(This: ^ID3D11Device2, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext) -> HRESULT,
    OpenSharedResource : proc(This: ^ID3D11Device2, hResource: HANDLE, ReturnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    CheckFormatSupport : proc(This: ^ID3D11Device2, Format: DXGI_FORMAT, pFormatSupport: ^UINT) -> HRESULT,
    CheckMultisampleQualityLevels : proc(This: ^ID3D11Device2, Format: DXGI_FORMAT, SampleCount: UINT, pNumQualityLevels: ^UINT) -> HRESULT,
    CheckCounterInfo : proc(This: ^ID3D11Device2, pCounterInfo: ^D3D11_COUNTER_INFO),
    CheckCounter : proc(This: ^ID3D11Device2, pDesc: ^D3D11_COUNTER_DESC, pType: ^D3D11_COUNTER_TYPE, pActiveCounters: ^UINT, szName: LPSTR, pNameLength: ^UINT, szUnits: LPSTR, pUnitsLength: ^UINT, szDescription: LPSTR, pDescriptionLength: ^UINT) -> HRESULT,
    CheckFeatureSupport : proc(This: ^ID3D11Device2, Feature: D3D11_FEATURE, pFeatureSupportData: rawptr, FeatureSupportDataSize: UINT) -> HRESULT,
    GetPrivateData : proc(This: ^ID3D11Device2, guid: REFGUID, pDataSize: ^UINT, pData: rawptr) -> HRESULT,
    SetPrivateData : proc(This: ^ID3D11Device2, guid: REFGUID, DataSize: UINT, pData: rawptr) -> HRESULT,
    SetPrivateDataInterface : proc(This: ^ID3D11Device2, guid: REFGUID, pData: ^IUnknown) -> HRESULT,
    GetFeatureLevel : proc(This: ^ID3D11Device2) -> D3D_FEATURE_LEVEL,
    GetCreationFlags : proc(This: ^ID3D11Device2) -> UINT,
    GetDeviceRemovedReason : proc(This: ^ID3D11Device2) -> HRESULT,
    GetImmediateContext : proc(This: ^ID3D11Device2, ppImmediateContext: ^^ID3D11DeviceContext),
    SetExceptionMode : proc(This: ^ID3D11Device2, RaiseFlags: UINT) -> HRESULT,
    GetExceptionMode : proc(This: ^ID3D11Device2) -> UINT,
    GetImmediateContext1 : proc(This: ^ID3D11Device2, ppImmediateContext: ^^ID3D11DeviceContext1),
    CreateDeferredContext1 : proc(This: ^ID3D11Device2, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext1) -> HRESULT,
    CreateBlendState1 : proc(This: ^ID3D11Device2, pBlendStateDesc: ^D3D11_BLEND_DESC1, ppBlendState: ^^ID3D11BlendState1) -> HRESULT,
    CreateRasterizerState1 : proc(This: ^ID3D11Device2, pRasterizerDesc: ^D3D11_RASTERIZER_DESC1, ppRasterizerState: ^^ID3D11RasterizerState1) -> HRESULT,
    CreateDeviceContextState : proc(This: ^ID3D11Device2, Flags: UINT, pFeatureLevels: ^D3D_FEATURE_LEVEL, FeatureLevels: UINT, SDKVersion: UINT, EmulatedInterface: REFIID, pChosenFeatureLevel: ^D3D_FEATURE_LEVEL, ppContextState: ^^ID3DDeviceContextState) -> HRESULT,
    OpenSharedResource1 : proc(This: ^ID3D11Device2, hResource: HANDLE, returnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    OpenSharedResourceByName : proc(This: ^ID3D11Device2, lpName: LPCWSTR, dwDesiredAccess: DWORD, returnedInterface: REFIID, ppResource: ^rawptr) -> HRESULT,
    GetImmediateContext2 : proc(This: ^ID3D11Device2, ppImmediateContext: ^^ID3D11DeviceContext2),
    CreateDeferredContext2 : proc(This: ^ID3D11Device2, ContextFlags: UINT, ppDeferredContext: ^^ID3D11DeviceContext2) -> HRESULT,
    GetResourceTiling : proc(This: ^ID3D11Device2, pTiledResource: ^ID3D11Resource, pNumTilesForEntireResource: ^UINT, pPackedMipDesc: ^D3D11_PACKED_MIP_DESC, pStandardTileShapeForNonPackedMips: ^D3D11_TILE_SHAPE, pNumSubresourceTilings: ^UINT, FirstSubresourceTilingToGet: UINT, pSubresourceTilingsForNonPackedMips: ^D3D11_SUBRESOURCE_TILING),
    CheckMultisampleQualityLevels1 : proc(This: ^ID3D11Device2, Format: DXGI_FORMAT, SampleCount: UINT, Flags: UINT, pNumQualityLevels: ^UINT) -> HRESULT,
}

//D3D11_TILE_MAPPING_FLAG
D3D11_TILE_MAPPING_NO_OVERWRITE : u32 :  0x1;

//D3D11_TILE_RANGE_FLAG
D3D11_TILE_RANGE_NULL : u32 :  0x1;
D3D11_TILE_RANGE_SKIP : u32 :  0x2;
D3D11_TILE_RANGE_REUSE_SINGLE_TILE : u32 :  0x4;

//D3D11_CHECK_MULTISAMPLE_QUALITY_LEVELS_FLAG
D3D11_CHECK_MULTISAMPLE_QUALITY_LEVELS_TILED_RESOURCE : u32 :  0x1;

//D3D11_TILE_COPY_FLAG
D3D11_TILE_COPY_NO_OVERWRITE : u32 :  0x1;
D3D11_TILE_COPY_LINEAR_BUFFER_TO_SWIZZLED_TILED_RESOURCE : u32 :  0x2;
D3D11_TILE_COPY_SWIZZLED_TILED_RESOURCE_TO_LINEAR_BUFFER : u32 :  0x4;
