

def find_simple_paths(nodes, edges, starting_node, ending_node):
    ans = []
    edges_by_starting_node = sort_edges_by_starting_node(edges, nodes)
    blocked_paths = []
    
    # Step 1: return single node paths
    for node in nodes:
        ans.append([node])
        if node == ending_node:
            blocked_paths.append([node])
    
    # Step 2: grow edges. We're adding to path each loop, but it will naturally stop when all paths arer in blocked_paths
    for path in ans:
        if path not in blocked_paths:   # if path has reached a block, don't consider it for growing
            last_node_in_path = path[len(path) - 1]
            new_edges = edges_by_starting_node[last_node_in_path]

            for edge in new_edges:
                new_path = path + [edge[1]]

                if len(new_path) != len(set(new_path)):
                    # new path has duplicates - found loop
                    blocked_paths.append(new_path)
                    if new_path[0] == new_path[len(new_path) - 1]:
                        # loop is first and last - allowed
                        ans.append(new_path)
                elif new_path[len(new_path) - 1] == ending_node:
                    ans.append(new_path)
                    blocked_paths.append(new_path)
                else:
                    ans.append(new_path)
    return ans

def sort_edges_by_starting_node(edges, nodes):
    ans = {}

    for node in nodes:
        ans[node] = []

    for edge in edges:
        start = edge[0]
        ans[start].append(edge)

    return ans

def find_prime_paths(simple_paths):
    ans = []

    for thisPath in simple_paths:
        subpath_count = 0
        for otherPath in simple_paths:
            if is_subpath(thisPath, otherPath):
                subpath_count += 1

        if subpath_count == 1:   # 1 subpath accounts for being a subpath of itself
            ans.append(thisPath)
    return ans

def is_subpath(this_path, other_path):
    flag = False

    curr_index = 0
    for other_path_node in other_path:
        if curr_index >= len(this_path):
            # reached the end
            break
        if this_path[curr_index] == other_path_node:
            flag = True
            curr_index += 1
        else:
            flag = False
            curr_index = 0

    if curr_index < (len(this_path)):
        flag = False

    return flag


simple_paths = find_simple_paths(
    nodes=['0','1','2','3','4','5','6'],
    edges=[('0','1'), ('0','2'), ('1','2'), ('2','3'), ('2','4'), ('3','6'), ('4','6'), ('4','5'), ('5','4')],
    starting_node='0',
    ending_node='6'
)


print(find_prime_paths(simple_paths=simple_paths))
